using MyFirstMauiApp.Models;

namespace MyFirstMauiApp.Services
{
    public class AIAssistantService
    {
        public async Task<AIInsights> GetStudyInsights(List<StudyTask> tasks)
        {
            await Task.Delay(300);

            var insights = new AIInsights();

            var highPriorityTasks = tasks.Where(t => t.Priority == "High" && !t.IsCompleted).ToList();
            var tasksDueSoon = tasks.Where(t => t.ScheduledDateTime.Date <= DateTime.Today.AddDays(2) && !t.IsCompleted).ToList();

            if (tasksDueSoon.Count > 0)
            {
                insights.Tip = $"⚠️ You have {tasksDueSoon.Count} high-priority task(s) due soon!";
                insights.NextDeadlineWarning = $"{tasksDueSoon.Count} tasks due in 2 days";
            }
            else if (tasks.Count == 0)
            {
                insights.Tip = "💡 Add your first task to get personalized AI tips!";
            }
            else
            {
                insights.Tip = GetRandomStudyTip();
            }

            var taskTimes = tasks.Where(t => t.ScheduledDateTime > DateTime.Now)
                                 .GroupBy(t => t.ScheduledDateTime.Hour)
                                 .OrderByDescending(g => g.Count())
                                 .FirstOrDefault();

            if (taskTimes != null)
            {
                insights.BestStudyTime = $"{taskTimes.Key}:00 - {taskTimes.Key + 2}:00";
            }
            else
            {
                insights.BestStudyTime = "9:00 AM - 11:00 AM";
            }

            insights.CurrentStreak = tasks.Count(t => t.IsCompleted && t.ScheduledDateTime.Date >= DateTime.Today.AddDays(-7));
            insights.CurrentStreak = Math.Min(insights.CurrentStreak, 7);

            var completionRate = tasks.Count > 0 ? (double)tasks.Count(t => t.IsCompleted) / tasks.Count * 100 : 0;
            if (completionRate >= 80)
            {
                insights.ProductivityMessage = $"🎉 Excellent! {completionRate:F0}% completion rate!";
            }
            else if (completionRate >= 50)
            {
                insights.ProductivityMessage = $"📈 Good progress: {completionRate:F0}% completed";
            }
            else if (tasks.Count > 0)
            {
                insights.ProductivityMessage = $"💪 Keep going! {tasks.Count(t => !t.IsCompleted)} tasks remaining";
            }
            else
            {
                insights.ProductivityMessage = "Start adding tasks to track your productivity!";
            }

            return insights;
        }

        public async Task<List<AISubtask>> GenerateSubtasks(string taskTitle)
        {
            await Task.Delay(200);

            var subtasks = new List<AISubtask>();
            var lowerTitle = taskTitle.ToLower();

            // Math related tasks
            if (lowerTitle.Contains("math") || lowerTitle.Contains("calculus") || lowerTitle.Contains("algebra") || lowerTitle.Contains("geometry"))
            {
                subtasks.Add(new AISubtask { Title = $"Review {taskTitle} fundamentals", Description = "Go over basic concepts and formulas" });
                subtasks.Add(new AISubtask { Title = $"Practice {taskTitle} problems", Description = "Complete 20 practice problems" });
                subtasks.Add(new AISubtask { Title = $"Watch {taskTitle} tutorial videos", Description = "Learn from video explanations" });
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} formula sheet", Description = "Write down all important formulas" });
                subtasks.Add(new AISubtask { Title = $"Take {taskTitle} practice test", Description = "Test your understanding" });
            }
            // Exam/Test related
            else if (lowerTitle.Contains("exam") || lowerTitle.Contains("test") || lowerTitle.Contains("quiz"))
            {
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} study schedule", Description = "Plan your study days" });
                subtasks.Add(new AISubtask { Title = $"Review all {taskTitle} materials", Description = "Go through notes and textbooks" });
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} study guide", Description = "Summarize key concepts" });
                subtasks.Add(new AISubtask { Title = $"Take {taskTitle} practice exam", Description = "Simulate test conditions" });
                subtasks.Add(new AISubtask { Title = $"Review {taskTitle} mistakes", Description = "Focus on weak areas" });
            }
            // Essay/Paper related
            else if (lowerTitle.Contains("essay") || lowerTitle.Contains("paper") || lowerTitle.Contains("writing"))
            {
                subtasks.Add(new AISubtask { Title = $"Research {taskTitle} topic", Description = "Gather credible sources" });
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} outline", Description = "Structure your arguments" });
                subtasks.Add(new AISubtask { Title = $"Write {taskTitle} first draft", Description = "Focus on content, not perfection" });
                subtasks.Add(new AISubtask { Title = $"Edit and revise {taskTitle}", Description = "Check grammar and flow" });
                subtasks.Add(new AISubtask { Title = $"Add citations to {taskTitle}", Description = "Properly format references" });
            }
            // Presentation related
            else if (lowerTitle.Contains("presentation") || lowerTitle.Contains("speech") || lowerTitle.Contains("talk"))
            {
                subtasks.Add(new AISubtask { Title = $"Research {taskTitle} content", Description = "Gather key information" });
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} slides", Description = "Design visual presentation" });
                subtasks.Add(new AISubtask { Title = $"Practice {taskTitle} delivery", Description = "Time and refine your speech" });
                subtasks.Add(new AISubtask { Title = $"Prepare {taskTitle} Q&A", Description = "Anticipate audience questions" });
                subtasks.Add(new AISubtask { Title = $"Record {taskTitle} practice run", Description = "Review and improve" });
            }
            // Reading/Book related
            else if (lowerTitle.Contains("read") || lowerTitle.Contains("book") || lowerTitle.Contains("chapter"))
            {
                subtasks.Add(new AISubtask { Title = $"Set reading goals for {taskTitle}", Description = "Pages per day" });
                subtasks.Add(new AISubtask { Title = $"Take notes on {taskTitle}", Description = "Summarize key points" });
                subtasks.Add(new AISubtask { Title = $"Answer {taskTitle} questions", Description = "Check comprehension" });
                subtasks.Add(new AISubtask { Title = $"Discuss {taskTitle} with study group", Description = "Share insights" });
                subtasks.Add(new AISubtask { Title = $"Write {taskTitle} summary", Description = "Review main ideas" });
            }
            // Programming/Coding related
            else if (lowerTitle.Contains("code") || lowerTitle.Contains("program") || lowerTitle.Contains("app") || lowerTitle.Contains("software"))
            {
                subtasks.Add(new AISubtask { Title = $"Plan {taskTitle} architecture", Description = "Design the structure" });
                subtasks.Add(new AISubtask { Title = $"Set up {taskTitle} environment", Description = "Install required tools" });
                subtasks.Add(new AISubtask { Title = $"Write {taskTitle} core functions", Description = "Implement main features" });
                subtasks.Add(new AISubtask { Title = $"Test {taskTitle} code", Description = "Debug and fix issues" });
                subtasks.Add(new AISubtask { Title = $"Document {taskTitle} code", Description = "Add comments and README" });
            }
            // Science related
            else if (lowerTitle.Contains("science") || lowerTitle.Contains("lab") || lowerTitle.Contains("experiment") || lowerTitle.Contains("chemistry") || lowerTitle.Contains("physics") || lowerTitle.Contains("biology"))
            {
                subtasks.Add(new AISubtask { Title = $"Review {taskTitle} concepts", Description = "Study theoretical background" });
                subtasks.Add(new AISubtask { Title = $"Gather {taskTitle} materials", Description = "Prepare lab equipment" });
                subtasks.Add(new AISubtask { Title = $"Conduct {taskTitle} experiment", Description = "Follow procedure carefully" });
                subtasks.Add(new AISubtask { Title = $"Record {taskTitle} observations", Description = "Document all data" });
                subtasks.Add(new AISubtask { Title = $"Write {taskTitle} lab report", Description = "Analyze results" });
            }
            // Language learning
            else if (lowerTitle.Contains("language") || lowerTitle.Contains("spanish") || lowerTitle.Contains("french") || lowerTitle.Contains("german") || lowerTitle.Contains("chinese") || lowerTitle.Contains("japanese"))
            {
                subtasks.Add(new AISubtask { Title = $"Learn {taskTitle} vocabulary", Description = "Study 20 new words" });
                subtasks.Add(new AISubtask { Title = $"Practice {taskTitle} grammar", Description = "Complete exercises" });
                subtasks.Add(new AISubtask { Title = $"Watch {taskTitle} video", Description = "Listen to native speakers" });
                subtasks.Add(new AISubtask { Title = $"Write {taskTitle} sentences", Description = "Apply what you learned" });
                subtasks.Add(new AISubtask { Title = $"Speak {taskTitle} practice", Description = "Record yourself speaking" });
            }
            // Default - for any other task
            else
            {
                subtasks.Add(new AISubtask { Title = $"Plan your {taskTitle} approach", Description = "Break down the main goal" });
                subtasks.Add(new AISubtask { Title = $"Gather resources for {taskTitle}", Description = "Collect needed materials" });
                subtasks.Add(new AISubtask { Title = $"Set specific goals for {taskTitle}", Description = "Define what success looks like" });
                subtasks.Add(new AISubtask { Title = $"Create {taskTitle} timeline", Description = "Schedule your work sessions" });
                subtasks.Add(new AISubtask { Title = $"Review and refine {taskTitle}", Description = "Check quality and completeness" });
            }

            return subtasks;
        }

        public async Task<string> ChatWithAI(string question, List<StudyTask> tasks)
        {
            await Task.Delay(500);

            var lowerQuestion = question.ToLower();

            if (lowerQuestion.Contains("prioritize") || lowerQuestion.Contains("what should i do first"))
            {
                var pendingTasks = tasks.Where(t => !t.IsCompleted).OrderBy(t => t.Priority == "High" ? 0 : t.Priority == "Medium" ? 1 : 2)
                                        .ThenBy(t => t.ScheduledDateTime)
                                        .Take(3)
                                        .ToList();

                if (pendingTasks.Any())
                {
                    var response = "Based on urgency and importance, here's your priority list:\n\n";
                    for (int i = 0; i < pendingTasks.Count; i++)
                    {
                        response += $"{i + 1}. {pendingTasks[i].Title} ({pendingTasks[i].Priority} priority) - Due {pendingTasks[i].ScheduledDateTime:MMM dd}\n";
                    }
                    return response;
                }
                return "Great job! You have no pending tasks. Consider adding new study goals!";
            }

            if (lowerQuestion.Contains("study tips") || lowerQuestion.Contains("how to study"))
            {
                return GetRandomStudyTip() + "\n\nTry the Pomodoro technique: 25 minutes focus, 5 minutes break. Schedule this using our timer feature!";
            }

            if (lowerQuestion.Contains("motivat") || lowerQuestion.Contains("keep going"))
            {
                var completedCount = tasks.Count(t => t.IsCompleted);
                var streak = tasks.Count(t => t.IsCompleted && t.ScheduledDateTime.Date >= DateTime.Today.AddDays(-7));

                return $"💪 You're doing amazing!\n\n" +
                       $"🏆 You've completed {completedCount} tasks total!\n" +
                       $"🔥 {streak}-day streak - keep it up!\n" +
                       $"📈 Your productivity is inspiring!\n\n" +
                       $"Remember: Every small step counts. You've got this! 🎉";
            }

            if (lowerQuestion.Contains("due today") || lowerQuestion.Contains("what's due"))
            {
                var dueToday = tasks.Where(t => t.ScheduledDateTime.Date == DateTime.Today && !t.IsCompleted).ToList();
                if (dueToday.Any())
                {
                    var response = "📅 Tasks due today:\n";
                    foreach (var task in dueToday)
                    {
                        response += $"• {task.Title} at {task.ScheduledDateTime:hh:mm tt}\n";
                    }
                    return response;
                }
                return "No tasks due today! Take a moment to plan ahead or relax! 🎉";
            }

            if (lowerQuestion.Contains("progress") || lowerQuestion.Contains("on track"))
            {
                var completed = tasks.Count(t => t.IsCompleted);
                var total = tasks.Count;
                var percentage = total > 0 ? (completed * 100 / total) : 0;

                var highPriorityCompleted = tasks.Count(t => t.Priority == "High" && t.IsCompleted);
                var highPriorityTotal = tasks.Count(t => t.Priority == "High");
                var highPercentage = highPriorityTotal > 0 ? (highPriorityCompleted * 100 / highPriorityTotal) : 100;

                return $"📊 Progress Report:\n\n" +
                       $"Overall: {percentage}% ({completed}/{total} tasks completed)\n" +
                       $"High priority: {highPercentage}% completed\n\n" +
                       (percentage < 50 ? "💡 You're making progress! Focus on one task at a time." :
                                         "🎯 Excellent progress! Keep up the momentum!");
            }

            return "I'm here to help! Ask me about:\n" +
                   "• Prioritizing your tasks\n" +
                   "• Study tips and techniques\n" +
                   "• Motivation and encouragement\n" +
                   "• What's due today\n" +
                   "• Your overall progress\n\n" +
                   "What would you like to know?";
        }

        public async Task<List<string>> GenerateStudySchedule(List<StudyTask> tasks)
        {
            await Task.Delay(300);

            var schedule = new List<string>();
            var pendingTasks = tasks.Where(t => !t.IsCompleted && t.ScheduledDateTime > DateTime.Now)
                                    .OrderBy(t => t.ScheduledDateTime)
                                    .Take(5)
                                    .ToList();

            if (pendingTasks.Any())
            {
                schedule.Add("📚 AI-Recommended Study Schedule:");
                schedule.Add("");
                for (int i = 0; i < pendingTasks.Count; i++)
                {
                    var task = pendingTasks[i];
                    schedule.Add($"DAY {i + 1}: {task.Title}");
                    schedule.Add($"   Time: {task.ScheduledDateTime:hh:mm tt}");
                    schedule.Add($"   Focus: {task.Priority} priority");
                    schedule.Add("");
                }
                schedule.Add("💡 Tip: Study during your peak focus hours (9-11 AM) for best results!");
            }
            else
            {
                schedule.Add("No pending tasks found! Great job staying on top of your studies!");
            }

            return schedule;
        }

        private string GetRandomStudyTip()
        {
            var tips = new[]
            {
                "💡 Break large tasks into 25-minute Pomodoro sessions for better focus!",
                "📊 Your best study time is between 9-11 AM - schedule important tasks then!",
                "🎯 Math assignments often take longer than expected - start early!",
                "🧠 Active recall beats passive reading. Test yourself regularly!",
                "⏰ Take a 5-minute break every 25 minutes to maintain focus.",
                "📝 Write down what you learn - it improves retention by 40%!",
                "🌙 Get 7-8 hours of sleep - it's crucial for memory consolidation.",
                "🏃‍♂️ Short exercise breaks boost brain function and concentration."
            };

            var random = new Random();
            return tips[random.Next(tips.Length)];
        }
    }
}