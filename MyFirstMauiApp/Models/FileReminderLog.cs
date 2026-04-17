using SQLite;
using System;

namespace MyFirstMauiApp.Models
{
    [Table("ReminderLogs")]
    public class FileReminderLog
    {
        private string _id = string.Empty;
        private string _fileId = string.Empty;
        private string _action = string.Empty;

        [PrimaryKey]
        public string Id
        {
            get => _id;
            set => _id = value;
        }

        [Indexed]
        public string FileId
        {
            get => _fileId;
            set => _fileId = value;
        }

        public DateTime ReminderTime { get; set; }

        public bool IsNotified { get; set; }

        public DateTime? NotifiedTime { get; set; }

        [MaxLength(50)]
        public string Action
        {
            get => _action;
            set => _action = value;
        }

        public DateTime CreatedDate { get; set; }
    }
}