# Linux Monitoring Automation Project

A Bash-based Linux automation project that performs system monitoring, log generation, backups, and cleanup tasks. This project simulates real-world DevOps-style system administration tasks.

---

## Features

* System monitoring (CPU, RAM, Disk, Uptime, Users)
* Logs system health into files
* Automated backup of logs directory
* Timestamped backup archives
* Cleanup of old logs and backups
* Modular script structure

---

##  Project Structure

```
linux-monitoring-project/
├── scripts/
│   ├── monitor.sh
│   ├── backup.sh
│   └── cleanup.sh
├── logs/
├── backups/
└── .gitignore
```

---

##  Scripts Description

### 1. monitor.sh

Collects system information:

* CPU usage
* Memory usage
* Disk usage
* Logged-in users
* System uptime

Saves output into `logs/`.

---

### 2. backup.sh

Creates compressed backups of logs:

* Uses `tar`
* Adds timestamp to filename
* Stores in `backups/`

---

### 3. cleanup.sh

Removes old files:

* Deletes logs older than 7 days
* Deletes backups older than 7 days

Uses `find` command.

---

##  How to Run

Make scripts executable:

```bash
chmod +x scripts/*.sh
```

Run monitoring:

```bash
./scripts/monitor.sh
```

Run backup:

```bash
./scripts/backup.sh
```

Run cleanup:

```bash
./scripts/cleanup.sh
```

---

##  Example Commands Used

* `df -h`
* `free -m`
* `ps aux`
* `tar -czf`
* `find`
* `awk`
* `sed`

---

##  Learning Outcome

This project helps in understanding:

* Linux system monitoring
* Bash scripting basics
* Automation concepts
* File handling in Linux
* Basic DevOps workflow

---

##  Author

Sanjay

---

##  Future Improvements

* Email alerts for high CPU/Disk usage
* Cron job automation
* Grafana dashboard integration
* Cloud deployment (AWS EC2)
