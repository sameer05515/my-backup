# File Backup Repository

A comprehensive personal backup repository containing database backups, scripts, projects, bookmarks, and various resources organized by date and category.

## 📁 Repository Structure

### Dated Backup Folders
- **Date-based backups**: Folders organized by backup date (e.g., `15-Aug-21`, `17-Nov-2023`, `10-May-2024`)
  - Contains files, scripts, and backups from specific dates
  - Useful for retrieving historical versions of files

### Database Backups

#### MySQL/MariaDB Backups
- **Location**: `31-June-2020/`, `linux-db-backup/`, `db-bckp-27-sep-2019/`
- Contains SQL dump files for various databases:
  - Interview management systems
  - Topic management databases
  - Word meaning applications
  - Task management systems
  - Shopping cart databases
  - Event logging databases

#### MongoDB Backups
- **Location**: `MongoDB-BKP/`, `17-Nov-2023/json/`
- Contains JSON export files from MongoDB collections
- Includes batch scripts for import/export operations

### Scripts & Automation

#### Batch Files (`CMD123/`, `batch-files/`)
- **Build scripts**: Compile and package WAR files for Java projects
- **Service scripts**: Start/stop Tomcat, SOLR, MariaDB services
- **Project launchers**: Quick-start scripts for React, Node.js, and Angular projects
- **Database utilities**: Backup and restore scripts
- **Git operations**: Automated git workflows

#### Task Scheduler (`task-scheduler/`)
- Automation scripts and scheduled tasks
- JAR files and configuration for task scheduling

### Bookmarks (`bookmarks/`)
- Browser bookmark backups in HTML format
- Organized by date (e.g., `bookmarks_1_20_20.html`)
- Notepad++ session files

### Projects & Experiments

#### Jekyll Blog Experiments (`experiments-with-jekyll/`)
- Multiple Jekyll static site generator projects
- Dockerized development environments
- Modern blog setups with Tailwind CSS and Bootstrap

#### Other Projects
- Angular Trix editor example
- CanvasJS chart samples
- CSS practical examples
- Various code snippets and utilities

### Resources

#### Tutorials & Documentation (`15-dec-2020/tutorials/`)
- PDF tutorials and documentation
- Presentation files
- Learning materials

#### JSON Data (`json/`, `ChatGPTNormalizedData/`)
- Structured data files
- API response examples
- Configuration files

#### Utilities (`decompiler/`, `Remembrable/`)
- Java decompiler tools
- Personal notes and reminders
- Quick reference files

## 🛠️ Common Operations

### Database Restore (MySQL)
Use the batch scripts in `batch-files/`:
```batch
restore-DB-backup.bat
```

### MongoDB Operations
Located in `MongoDB-BKP/` and `17-Nov-2023/`:
- Import/export batch scripts
- JSON collection backups

### Project Startup Scripts
Check `CMD123/` for quick-start scripts for various projects:
- Frontend/backend project launchers
- Development server starters

## 📝 Notes

- This repository serves as a personal backup and storage system
- Files are organized chronologically and by category
- Batch scripts are primarily for Windows environments
- Some scripts contain hardcoded paths that may need adjustment

## 🔧 Maintenance

- Regularly backup important databases and files
- Keep scripts updated with current project paths
- Organize new backups in date-based folders
- Document any custom scripts or configurations

---

**Last Updated**: Repository maintained for personal backup and archival purposes
