using SQLite;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Microsoft.Maui.Graphics;

namespace MyFirstMauiApp.Models
{
    [Table("Files")]
    public class FileItem : INotifyPropertyChanged
    {
        private string _id = string.Empty;
        private string _userId = string.Empty;
        private string _fileName = string.Empty;
        private string _filePath = string.Empty;
        private string _category = string.Empty;
        private string _icon = string.Empty;
        private long _size;
        private DateTime _createdDate;
        private DateTime? _reminderDate;
        private bool _hasReminder;
        private string _fileType = string.Empty;

        [PrimaryKey]
        public string Id
        {
            get => _id;
            set { _id = value; OnPropertyChanged(); }
        }

        [Indexed]
        [MaxLength(100)]
        public string UserId
        {
            get => _userId;
            set { _userId = value; OnPropertyChanged(); }
        }

        [MaxLength(500)]
        public string FileName
        {
            get => _fileName;
            set { _fileName = value; OnPropertyChanged(); }
        }

        [MaxLength(1000)]
        public string FilePath
        {
            get => _filePath;
            set { _filePath = value; OnPropertyChanged(); }
        }

        [MaxLength(100)]
        public string Category
        {
            get => _category;
            set { _category = value; OnPropertyChanged(); }
        }

        [MaxLength(50)]
        public string Icon
        {
            get => _icon;
            set { _icon = value; OnPropertyChanged(); }
        }

        public long Size
        {
            get => _size;
            set { _size = value; OnPropertyChanged(); }
        }

        public DateTime CreatedDate
        {
            get => _createdDate;
            set { _createdDate = value; OnPropertyChanged(); }
        }

        public DateTime? ReminderDate
        {
            get => _reminderDate;
            set { _reminderDate = value; OnPropertyChanged(); }
        }

        public bool HasReminder
        {
            get => _hasReminder;
            set { _hasReminder = value; OnPropertyChanged(); }
        }

        [MaxLength(50)]
        public string FileType
        {
            get => _fileType;
            set { _fileType = value; OnPropertyChanged(); }
        }

        [Ignore]
        public string FormattedSize => Size / 1024.0 > 1024
            ? $"{Size / (1024.0 * 1024.0):F2} MB"
            : $"{Size / 1024.0:F2} KB";

        [Ignore]
        public string FormattedDate => CreatedDate.ToString("MM/dd/yyyy");

        [Ignore]
        public string FormattedReminderDate => ReminderDate?.ToString("MM/dd/yyyy hh:mm tt") ?? "No reminder";

        [Ignore]
        public string ReminderTimeDisplay => ReminderDate?.ToString("hh:mm tt") ?? "No schedule";

        [Ignore]
        public Color IconColor
        {
            get
            {
                return FileType switch
                {
                    "PDF Document" => Color.FromArgb("#FFE5E5"),
                    "JPEG Image" or "PNG Image" or "GIF Image" => Color.FromArgb("#E5F5E5"),
                    "Word Document" => Color.FromArgb("#E5E5FF"),
                    "Excel Spreadsheet" => Color.FromArgb("#E5FFE5"),
                    "Text File" => Color.FromArgb("#FFF5E5"),
                    _ => Color.FromArgb("#F0F0F0")
                };
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}