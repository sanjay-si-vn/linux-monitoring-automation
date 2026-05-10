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

## screenshots 
<img width="979" height="423" alt="Screenshot 2026-05-10 200625" src="https://github.com/user-attachments/assets/5e8d414a-ed42-455f-9165-1278a87d21a6" />
<img width="1919" height="563" alt="Screenshot 2026-05-10 200646" src="https://github.com/user-attachments/assets/6d46d8c8-c2ae-468a-a091-c72139c61ce0" />
<img width="1481" height="379" alt="Screenshot 2026-05-10 200701" src="https://github.com/user-attachments/assets/9dc60bf1-f18e-4839-ac8b-d085eb6507b0" />
<img width="1056" height="778" alt="Screenshot 2026-05-10 200716" src="https://github.com/user-attachments/assets/6dce7dc9-0be5-49af-a6c2-5fd389603cdc" />
<img width="557" height="298" alt="Screenshot 2026-05-10 200838" src="https://github.com/user-attachments/assets/71763b79-2686-4231-9ab7-574eadf249a7" />





