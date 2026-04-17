using System.Collections.ObjectModel;
using System.Windows.Input;
using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp.ViewModels
{
    public class StudyTasksViewModel : BindableObject
    {
        private readonly StudyTaskService _taskService = new();
        private readonly AIAssistantService _aiService = new();

        // Use List instead of ObservableCollection for better performance
        private List<StudyTask> _allTasks = new();
        public ObservableCollection<StudyTask> Tasks { get; } = new();

        // CHANGED: Use IEnumerable instead of ObservableCollection for better performance
        private List<StudyTask> _filteredTasksList = new();
        public IEnumerable<StudyTask> FilteredTasks => _filteredTasksList;

        // Add a flag to prevent recursive filtering
        private bool _isFiltering = false;

        // Add debouncer timer
        private System.Timers.Timer? _filterDebounceTimer;

        // AI Assistant Properties
        private bool _isAIPanelVisible = false;
        public bool IsAIPanelVisible
        {
            get => _isAIPanelVisible;
            set
            {
                _isAIPanelVisible = value;
                OnPropertyChanged();
            }
        }

        private bool _isAIChatVisible = false;
        public bool IsAIChatVisible
        {
            get => _isAIChatVisible;
            set
            {
                _isAIChatVisible = value;
                OnPropertyChanged();
            }
        }

        private string _aiTip = string.Empty;
        public string AITip
        {
            get => _aiTip;
            set
            {
                _aiTip = value;
                OnPropertyChanged();
            }
        }

        private ObservableCollection<ChatMessage> _chatMessages = new();
        public ObservableCollection<ChatMessage> ChatMessages
        {
            get => _chatMessages;
            set
            {
                _chatMessages = value;
                OnPropertyChanged();
            }
        }

        private string _userInput = string.Empty;
        public string UserInput
        {
            get => _userInput;
            set
            {
                _userInput = value;
                OnPropertyChanged();
            }
        }

        private bool _isAIThinking = false;
        public bool IsAIThinking
        {
            get => _isAIThinking;
            set
            {
                _isAIThinking = value;
                OnPropertyChanged();
            }
        }

        private string _productivityInsight = string.Empty;
        public string ProductivityInsight
        {
            get => _productivityInsight;
            set
            {
                _productivityInsight = value;
                OnPropertyChanged();
            }
        }

        private string _bestStudyTime = string.Empty;
        public string BestStudyTime
        {
            get => _bestStudyTime;
            set
            {
                _bestStudyTime = value;
                OnPropertyChanged();
            }
        }

        private int _currentStreak = 0;
        public int CurrentStreak
        {
            get => _currentStreak;
            set
            {
                _currentStreak = value;
                OnPropertyChanged();
            }
        }

        private string _nextDeadlineWarning = string.Empty;
        public string NextDeadlineWarning
        {
            get => _nextDeadlineWarning;
            set
            {
                _nextDeadlineWarning = value;
                OnPropertyChanged();
            }
        }

        private ObservableCollection<AISubtask> _aiSubtasks = new();
        public ObservableCollection<AISubtask> AISubtasks
        {
            get => _aiSubtasks;
            set
            {
                _aiSubtasks = value;
                OnPropertyChanged();
            }
        }

        private bool _showAISubtasks = false;
        public bool ShowAISubtasks
        {
            get => _showAISubtasks;
            set
            {
                _showAISubtasks = value;
                OnPropertyChanged();
            }
        }

        private string _aiPriorityAdvice = string.Empty;
        public string AIPriorityAdvice
        {
            get => _aiPriorityAdvice;
            set
            {
                _aiPriorityAdvice = value;
                OnPropertyChanged();
            }
        }

        private string _aiBestTimeAdvice = string.Empty;
        public string AIBestTimeAdvice
        {
            get => _aiBestTimeAdvice;
            set
            {
                _aiBestTimeAdvice = value;
                OnPropertyChanged();
            }
        }

        private bool _isPopupVisible = false;
        public bool IsPopupVisible
        {
            get => _isPopupVisible;
            set
            {
                _isPopupVisible = value;
                OnPropertyChanged(nameof(IsPopupVisible));
            }
        }

        private string _title = string.Empty;
        public string Title
        {
            get => _title;
            set
            {
                _title = value;
                OnPropertyChanged();
                if (!string.IsNullOrWhiteSpace(value) && value.Length > 3)
                {
                    _ = GenerateAISubtasks(value);
                }
                else
                {
                    ShowAISubtasks = false;
                }
            }
        }

        private string _description = string.Empty;
        public string Description
        {
            get => _description;
            set
            {
                _description = value;
                OnPropertyChanged();
            }
        }

        private DateTime _selectedDate = DateTime.Today;
        public DateTime SelectedDate
        {
            get => _selectedDate;
            set
            {
                _selectedDate = value;
                OnPropertyChanged();
                UpdateAIPriorityAdvice();
            }
        }

        private TimeSpan _selectedTime = DateTime.Now.TimeOfDay;
        public TimeSpan SelectedTime
        {
            get => _selectedTime;
            set
            {
                _selectedTime = value;
                OnPropertyChanged();
                UpdateAIPriorityAdvice();
            }
        }

        private string _priority = "Medium";
        public string Priority
        {
            get => _priority;
            set
            {
                _priority = value;
                OnPropertyChanged();
            }
        }

        private string _repeatOption = "None";
        public string RepeatOption
        {
            get => _repeatOption;
            set
            {
                _repeatOption = value;
                OnPropertyChanged();
            }
        }

        private int _snoozeMinutes = 5;
        public int SnoozeMinutes
        {
            get => _snoozeMinutes;
            set
            {
                _snoozeMinutes = value;
                OnPropertyChanged();
            }
        }

        private bool _isSnoozing = true;
        public bool IsSnoozing
        {
            get => _isSnoozing;
            set
            {
                _isSnoozing = value;
                OnPropertyChanged();
            }
        }

        // Filter Properties
        private string _currentPriorityFilter = "All";
        public string CurrentPriorityFilter
        {
            get => _currentPriorityFilter;
            set
            {
                if (_currentPriorityFilter != value)
                {
                    _currentPriorityFilter = value;
                    OnPropertyChanged();
                    UpdateFilterButtonStates();
                    DebouncedApplyFilterAndSort(); // Use debounced version
                }
            }
        }

        private string _currentSortBy = "Urgency";
        public string CurrentSortBy
        {
            get => _currentSortBy;
            set
            {
                if (_currentSortBy != value)
                {
                    _currentSortBy = value;
                    OnPropertyChanged();
                    DebouncedApplyFilterAndSort(); // Use debounced version
                }
            }
        }

        // CHANGED: Updated property to use new filtered list
        public int FilteredTasksCount => _filteredTasksList?.Count ?? 0;

        // Filter button states
        private bool _isAllFilter = true;
        public bool IsAllFilter
        {
            get => _isAllFilter;
            set
            {
                _isAllFilter = value;
                OnPropertyChanged();
            }
        }

        private bool _isHighFilter = false;
        public bool IsHighFilter
        {
            get => _isHighFilter;
            set
            {
                _isHighFilter = value;
                OnPropertyChanged();
            }
        }

        private bool _isMediumFilter = false;
        public bool IsMediumFilter
        {
            get => _isMediumFilter;
            set
            {
                _isMediumFilter = value;
                OnPropertyChanged();
            }
        }

        private bool _isLowFilter = false;
        public bool IsLowFilter
        {
            get => _isLowFilter;
            set
            {
                _isLowFilter = value;
                OnPropertyChanged();
            }
        }

        public int TotalTasks => Tasks.Count;
        public int CompletedTasks => Tasks.Count(t => t.IsCompleted);
        public int PendingTasks => Tasks.Count(t => !t.IsCompleted);

        public List<string> Priorities { get; } = new()
        {
            "Low",
            "Medium",
            "High"
        };

        public List<string> RepeatOptions { get; } = new()
        {
            "None",
            "Daily",
            "Weekly",
            "Every 4 Hours",
            "Every Hour"
        };

        public List<int> SnoozeOptions { get; } = new()
        {
            1,
            5,
            10,
            15,
            30,
            60
        };

        public List<string> SortOptions { get; } = new()
        {
            "Due Date",
            "Priority",
            "Title",
            "Urgency"
        };

        // Commands
        public ICommand AddTaskCommand { get; }
        public ICommand DeleteCommand { get; }
        public ICommand CompleteCommand { get; }
        public ICommand ShowPopupCommand { get; }
        public ICommand ClosePopupCommand { get; }
        public ICommand ToggleSnoozeCommand { get; }
        public ICommand RefreshCommand { get; }
        public ICommand TestNotificationCommand { get; }
        public ICommand ToggleAIPanelCommand { get; }
        public ICommand OpenAIChatCommand { get; }
        public ICommand CloseAIChatCommand { get; }
        public ICommand SendMessageCommand { get; }
        public ICommand QuickQuestionCommand { get; }
        public ICommand AddAISubtaskCommand { get; }
        public ICommand AddAllAISubtasksCommand { get; }
        public ICommand RegenerateSubtasksCommand { get; }
        public ICommand ApplyAIScheduleCommand { get; }
        public ICommand FilterByPriorityCommand { get; }
        public ICommand SortTasksCommand { get; }

        public StudyTasksViewModel()
        {
            AddTaskCommand = new Command(async () => await AddTask());
            DeleteCommand = new Command<StudyTask>(async t => await DeleteTask(t));
            CompleteCommand = new Command<StudyTask>(async t => await CompleteTask(t));
            ShowPopupCommand = new Command(() => IsPopupVisible = true);
            ClosePopupCommand = new Command(() =>
            {
                IsPopupVisible = false;
                ClearForm();
            });
            ToggleSnoozeCommand = new Command<StudyTask>(async t => await ToggleSnooze(t));
            RefreshCommand = new Command(async () => await LoadTasks());
            TestNotificationCommand = new Command(async () => await TestNotification());
            ToggleAIPanelCommand = new Command(() => IsAIPanelVisible = !IsAIPanelVisible);
            OpenAIChatCommand = new Command(() =>
            {
                IsAIChatVisible = true;
                if (ChatMessages.Count == 0)
                {
                    AddWelcomeMessage();
                }
            });
            CloseAIChatCommand = new Command(() => IsAIChatVisible = false);
            SendMessageCommand = new Command(async () => await SendUserMessage());
            QuickQuestionCommand = new Command<string>(async (question) => await SendQuickQuestion(question));
            AddAISubtaskCommand = new Command<AISubtask>(async (subtask) => await AddSubtaskToCurrentTask(subtask));
            AddAllAISubtasksCommand = new Command(async () => await AddAllSubtasksToCurrentTask());
            RegenerateSubtasksCommand = new Command(async () =>
            {
                if (!string.IsNullOrWhiteSpace(Title))
                {
                    ShowAISubtasks = false;
                    await Task.Delay(100);
                    await GenerateAISubtasks(Title);
                }
            });
            ApplyAIScheduleCommand = new Command(async () => await ApplyAISchedule());
            FilterByPriorityCommand = new Command<string>((priority) =>
            {
                CurrentPriorityFilter = priority;
            });
            SortTasksCommand = new Command<string>((sortOption) =>
            {
                CurrentSortBy = sortOption;
            });

            _ = LoadTasks();
            _ = LoadAIInsights();
        }

        // NEW: Debounced filter/sort method
        private void DebouncedApplyFilterAndSort()
        {
            _filterDebounceTimer?.Stop();
            _filterDebounceTimer?.Dispose();
            _filterDebounceTimer = new System.Timers.Timer(100); // 100ms delay
            _filterDebounceTimer.Elapsed += (s, e) =>
            {
                _filterDebounceTimer?.Stop();
                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    ApplyFilterAndSort();
                });
            };
            _filterDebounceTimer.AutoReset = false;
            _filterDebounceTimer.Start();
        }

        // OPTIMIZED: ApplyFilterAndSort - NO Task.Run, NO ObservableCollection clear/add
        private void ApplyFilterAndSort()
        {
            if (_isFiltering) return;
            _isFiltering = true;

            try
            {
                IEnumerable<StudyTask> filtered = _allTasks;

                // Apply filter first (only for non-All filters)
                if (CurrentPriorityFilter != "All")
                {
                    filtered = _allTasks.Where(t => t.Priority == CurrentPriorityFilter && !t.IsCompleted);
                }

                // Apply sorting
                filtered = CurrentSortBy switch
                {
                    "Due Date" => filtered.OrderBy(t => t.ScheduledDateTime),
                    "Priority" => filtered.OrderBy(t => t.PriorityOrder).ThenBy(t => t.ScheduledDateTime),
                    "Title" => filtered.OrderBy(t => t.Title),
                    "Urgency" => filtered.OrderBy(t => t.GetPriorityScore()),
                    _ => filtered.OrderBy(t => t.ScheduledDateTime)
                };

                // Create new list and replace - this is much faster than ObservableCollection operations
                _filteredTasksList = filtered.ToList();

                // Notify UI once
                OnPropertyChanged(nameof(FilteredTasks));
                OnPropertyChanged(nameof(FilteredTasksCount));
            }
            finally
            {
                _isFiltering = false;
            }
        }

        private void UpdateFilterButtonStates()
        {
            IsAllFilter = CurrentPriorityFilter == "All";
            IsHighFilter = CurrentPriorityFilter == "High";
            IsMediumFilter = CurrentPriorityFilter == "Medium";
            IsLowFilter = CurrentPriorityFilter == "Low";
        }

        public async Task LoadTasks()
        {
            try
            {
                var list = await _taskService.GetTasksAsync();
                _allTasks = list.OrderBy(t => t.ScheduledDateTime).ToList();

                // Update UI on main thread
                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    Tasks.Clear();
                    foreach (var t in _allTasks)
                    {
                        Tasks.Add(t);
                    }

                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));

                    ApplyFilterAndSort();
                    UpdateFilterButtonStates();
                });

                await LoadAIInsights();
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to load tasks: {ex.Message}");
            }
        }

        private async Task LoadAIInsights()
        {
            try
            {
                var insights = await _aiService.GetStudyInsights(_allTasks);
                if (insights != null)
                {
                    AITip = insights.Tip;
                    ProductivityInsight = insights.ProductivityMessage;
                    BestStudyTime = insights.BestStudyTime;
                    CurrentStreak = insights.CurrentStreak;
                    NextDeadlineWarning = insights.NextDeadlineWarning;
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error loading AI insights: {ex.Message}");
                AITip = "Start adding tasks to get personalized AI tips!";
                ProductivityInsight = "Complete tasks to see your productivity insights";
                BestStudyTime = "Based on your schedule";
                CurrentStreak = 0;
            }
        }

        private async Task GenerateAISubtasks(string taskTitle)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(taskTitle))
                {
                    ShowAISubtasks = false;
                    return;
                }

                ShowAISubtasks = true;

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    AISubtasks.Clear();
                    AISubtasks.Add(new AISubtask
                    {
                        Title = "🤔 AI is thinking...",
                        Description = "",
                        IsSelected = false
                    });
                });

                var subtasks = await _aiService.GenerateSubtasks(taskTitle);

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    AISubtasks.Clear();
                    foreach (var subtask in subtasks)
                    {
                        AISubtasks.Add(new AISubtask
                        {
                            Title = subtask.Title,
                            IsSelected = false,
                            Description = subtask.Description
                        });
                    }
                    OnPropertyChanged(nameof(AISubtasks));
                });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error generating subtasks: {ex.Message}");
                ShowAISubtasks = false;
            }
        }

        private void UpdateAIPriorityAdvice()
        {
            var daysUntilDue = (SelectedDate - DateTime.Today).Days;
            if (daysUntilDue <= 1)
            {
                AIPriorityAdvice = "🔴 HIGH (Due soon!)";
                Priority = "High";
            }
            else if (daysUntilDue <= 3)
            {
                AIPriorityAdvice = "🟡 MEDIUM-HIGH (Due in a few days)";
                if (Priority == "Low") Priority = "Medium";
            }
            else
            {
                AIPriorityAdvice = "🟢 Adjustable priority";
            }

            var hour = SelectedTime.Hours;
            if (hour >= 9 && hour <= 11)
            {
                AIBestTimeAdvice = "✨ This matches your peak focus time!";
            }
            else if (hour >= 14 && hour <= 16)
            {
                AIBestTimeAdvice = "📈 Good afternoon study slot";
            }
            else
            {
                AIBestTimeAdvice = "💡 Consider scheduling between 9-11 AM for best focus";
            }
        }

        private async Task AddSubtaskToCurrentTask(AISubtask subtask)
        {
            try
            {
                if (subtask.Title == "🤔 AI is thinking...")
                    return;

                var newTask = new StudyTask
                {
                    Title = subtask.Title,
                    Description = subtask.Description,
                    Priority = Priority,
                    ScheduledDateTime = SelectedDate.Date + SelectedTime,
                    SnoozeMinutes = SnoozeMinutes,
                    RepeatOption = RepeatOption,
                    IsSnoozing = IsSnoozing,
                    NotificationId = new Random().Next(100000, 999999),
                    CreatedAt = DateTime.Now
                };

                await _taskService.AddTaskAsync(newTask);

                if (newTask.ScheduledDateTime > DateTime.Now)
                {
                    NotificationService.ScheduleMainNotification(newTask);
                }

                if (newTask.IsSnoozing)
                {
                    NotificationService.ScheduleSnoozeNotifications(newTask);
                }

                _allTasks.Add(newTask);

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    Tasks.Add(newTask);
                    subtask.IsSelected = true;
                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));
                    ApplyFilterAndSort();
                });

                await ShowAlertAsync("Added", $"Added: {subtask.Title}");
                await LoadAIInsights();
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to add subtask: {ex.Message}");
            }
        }

        private async Task AddAllSubtasksToCurrentTask()
        {
            try
            {
                var subtasksToAdd = AISubtasks.Where(s => !s.IsSelected && s.Title != "🤔 AI is thinking...").ToList();
                var newTasks = new List<StudyTask>();

                foreach (var subtask in subtasksToAdd)
                {
                    var newTask = new StudyTask
                    {
                        Title = subtask.Title,
                        Description = subtask.Description,
                        Priority = Priority,
                        ScheduledDateTime = SelectedDate.Date + SelectedTime,
                        SnoozeMinutes = SnoozeMinutes,
                        RepeatOption = RepeatOption,
                        IsSnoozing = IsSnoozing,
                        NotificationId = new Random().Next(100000, 999999),
                        CreatedAt = DateTime.Now
                    };

                    await _taskService.AddTaskAsync(newTask);

                    if (newTask.ScheduledDateTime > DateTime.Now)
                    {
                        NotificationService.ScheduleMainNotification(newTask);
                    }

                    if (newTask.IsSnoozing)
                    {
                        NotificationService.ScheduleSnoozeNotifications(newTask);
                    }

                    _allTasks.Add(newTask);
                    newTasks.Add(newTask);
                    subtask.IsSelected = true;
                }

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    foreach (var task in newTasks)
                    {
                        Tasks.Add(task);
                    }
                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));
                    ApplyFilterAndSort();
                });

                await ShowAlertAsync("Success", $"Added {subtasksToAdd.Count} subtasks!");
                await LoadAIInsights();
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to add subtasks: {ex.Message}");
            }
        }

        private async Task ApplyAISchedule()
        {
            try
            {
                var schedule = await _aiService.GenerateStudySchedule(_allTasks);
                if (schedule != null && schedule.Count > 0)
                {
                    await ShowAlertAsync("Study Schedule",
                        $"AI recommends:\n{string.Join("\n", schedule.Take(5))}\n\nWould you like to apply these changes?",
                        "OK");
                }
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to generate schedule: {ex.Message}");
            }
        }

        private async Task ShowAlertAsync(string title, string message, string cancel = "OK")
        {
            if (Application.Current?.Windows.Count > 0)
            {
                var window = Application.Current.Windows[0];
                if (window.Page != null)
                {
                    await window.Page.DisplayAlertAsync(title, message, cancel);
                }
            }
        }

        private async Task<bool> ShowConfirmAsync(string title, string message, string accept, string cancel)
        {
            if (Application.Current?.Windows.Count > 0)
            {
                var window = Application.Current.Windows[0];
                if (window.Page != null)
                {
                    return await window.Page.DisplayAlertAsync(title, message, accept, cancel);
                }
            }
            return false;
        }

        private void AddWelcomeMessage()
        {
            ChatMessages.Add(new ChatMessage
            {
                Sender = "AI",
                Content = "Welcome back! I've been analyzing your study habits:\n\n" +
                         $"📊 Based on your last 7 days:\n" +
                         $"• Most productive: {BestStudyTime}\n" +
                         $"• Current streak: {CurrentStreak} days 🔥\n" +
                         $"• Pending tasks: {PendingTasks}\n\n" +
                         "💡 What would you like help with?",
                Timestamp = DateTime.Now,
                IsUser = false
            });
        }

        private async Task SendUserMessage()
        {
            if (string.IsNullOrWhiteSpace(UserInput)) return;

            var userMessage = new ChatMessage
            {
                Sender = "You",
                Content = UserInput,
                Timestamp = DateTime.Now,
                IsUser = true
            };

            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => ChatMessages.Add(userMessage));
            var question = UserInput;
            UserInput = string.Empty;
            IsAIThinking = true;

            try
            {
                var response = await _aiService.ChatWithAI(question, _allTasks);

                var aiMessage = new ChatMessage
                {
                    Sender = "AI",
                    Content = response,
                    Timestamp = DateTime.Now,
                    IsUser = false
                };

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => ChatMessages.Add(aiMessage));
            }
            catch (Exception ex)
            {
                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    ChatMessages.Add(new ChatMessage
                    {
                        Sender = "AI",
                        Content = "Sorry, I'm having trouble connecting. Please try again later.",
                        Timestamp = DateTime.Now,
                        IsUser = false
                    });
                });
            }
            finally
            {
                IsAIThinking = false;
            }
        }

        private async Task SendQuickQuestion(string question)
        {
            UserInput = question;
            await SendUserMessage();
        }

        private async Task AddTask()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(Title))
                {
                    await ShowAlertAsync("Error", "Please enter a title");
                    return;
                }

                var scheduledDateTime = SelectedDate.Date + SelectedTime;

                var task = new StudyTask
                {
                    Title = Title,
                    Description = Description,
                    Priority = Priority,
                    ScheduledDateTime = scheduledDateTime,
                    SnoozeMinutes = SnoozeMinutes,
                    RepeatOption = RepeatOption,
                    IsSnoozing = IsSnoozing,
                    NotificationId = new Random().Next(100000, 999999),
                    CreatedAt = DateTime.Now
                };

                await _taskService.AddTaskAsync(task);

                if (task.ScheduledDateTime > DateTime.Now)
                {
                    NotificationService.ScheduleMainNotification(task);
                }

                if (task.IsSnoozing)
                {
                    NotificationService.ScheduleSnoozeNotifications(task);
                }

                _allTasks.Add(task);

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    Tasks.Add(task);
                    ClearForm();
                    IsPopupVisible = false;
                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));
                    ApplyFilterAndSort();
                });

                await LoadAIInsights();
                await ShowAlertAsync("Success", "Task added successfully!");
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to add task: {ex.Message}");
            }
        }

        private async Task DeleteTask(StudyTask? task)
        {
            try
            {
                if (task == null) return;

                bool confirm = await ShowConfirmAsync(
                    "Confirm Delete",
                    $"Are you sure you want to delete '{task.Title}'?",
                    "Yes", "No");

                if (!confirm) return;

                NotificationService.Cancel(task);
                await _taskService.DeleteTaskAsync(task.Id);
                _allTasks.Remove(task);

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    Tasks.Remove(task);
                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));
                    ApplyFilterAndSort();
                });

                await LoadAIInsights();
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to delete task: {ex.Message}");
            }
        }

        private async Task CompleteTask(StudyTask? task)
        {
            try
            {
                if (task == null) return;

                task.IsCompleted = true;
                task.IsSnoozing = false;

                NotificationService.Cancel(task);
                await _taskService.UpdateTaskAsync(task);

                // Update in both collections
                var existingTask = _allTasks.FirstOrDefault(t => t.Id == task.Id);
                if (existingTask != null)
                {
                    existingTask.IsCompleted = true;
                    existingTask.IsSnoozing = false;
                }

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    var uiTask = Tasks.FirstOrDefault(t => t.Id == task.Id);
                    if (uiTask != null)
                    {
                        Tasks.Remove(uiTask);
                    }
                    OnPropertyChanged(nameof(TotalTasks));
                    OnPropertyChanged(nameof(CompletedTasks));
                    OnPropertyChanged(nameof(PendingTasks));
                    ApplyFilterAndSort();
                });

                await LoadAIInsights();
                await ShowAlertAsync("Success", "Task completed! 🎉");
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to complete task: {ex.Message}");
            }
        }

        private async Task ToggleSnooze(StudyTask? task)
        {
            try
            {
                if (task == null || task.IsCompleted) return;

                await NotificationService.UpdateTaskSnoozeState(task, !task.IsSnoozing);

                var existingTask = _allTasks.FirstOrDefault(t => t.Id == task.Id);
                if (existingTask != null)
                {
                    existingTask.IsSnoozing = !existingTask.IsSnoozing;
                }

                string status = task.IsSnoozing ? "enabled" : "disabled";
                await ShowAlertAsync("Snooze", $"Snooze {status} for this task");
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to toggle snooze: {ex.Message}");
            }
        }

        private async Task TestNotification()
        {
            try
            {
                var request = new Plugin.LocalNotification.NotificationRequest
                {
                    NotificationId = 999999,
                    Title = "🔔 Test Notification",
                    Description = "This is a test notification - it works!",
                    Schedule = new Plugin.LocalNotification.NotificationRequestSchedule
                    {
                        NotifyTime = DateTime.Now.AddSeconds(5)
                    }
                };

                await Plugin.LocalNotification.LocalNotificationCenter.Current.Show(request);
                await ShowAlertAsync("Success", "Test notification scheduled for 5 seconds from now!\n\nCheck your notification panel.");
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Test notification failed: {ex.Message}");
            }
        }

        private void ClearForm()
        {
            Title = string.Empty;
            Description = string.Empty;
            Priority = "Medium";
            RepeatOption = "None";
            SnoozeMinutes = 5;
            IsSnoozing = true;
            SelectedDate = DateTime.Today;
            SelectedTime = DateTime.Now.TimeOfDay;

            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                AISubtasks.Clear();
                ShowAISubtasks = false;
            });
        }
    }
}