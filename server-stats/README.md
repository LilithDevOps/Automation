# 📊 server-stats.sh

This is one of my first DevOps learning project ideas to practice and sharpen my skills — a simple yet practical Bash script to monitor server performance stats on any Linux system. My goal was to gain hands-on experience with Bash scripting, system resource monitoring, and eventually build this into something more advanced.

[https://roadmap.sh/projects/server-stats
](https://roadmap.sh/projects/server-stats)

## 🚀 What It Does

When you run `server-stats.sh`, it will display:

- ✅ Total CPU usage
- ✅ Total memory usage (used vs total, with percentage)
- ✅ Total disk usage (used vs total, with percentage)
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by memory usage

---

### 🌟 Stretch Goals (Included in `stretch/server-stats-full.sh`)
- OS version detection
- Uptime
- Load average
- Logged in users
- Failed login attempts (forensics/infosec angle)

---

## 🧠 Why I Built It

As a DevOps engineer in training, I wanted to:
- Practice Bash scripting in a real-world context
- Understand how Linux reports and tracks system usage
- Lay the foundation for future projects using monitoring, automation, and alerting

This is my learning journey, and this script is step one.

---

## 🛠️ How to Use

```bash
# Make the script executable
chmod +x server-stats.sh

# Run it
./server-stats.sh

Note: You may need sudo access to see some sections like failed logins.

💡 Next Steps
Planned improvements:

Docker container integration

Scheduled CRON monitoring

Log output to file

Integration with Prometheus and Grafana

🧵 Connect With Me
This repo is part of my DevOps portfolio. I'm actively building skills in cloud infrastructure, monitoring, and automation. If you're interested in collaborating or have feedback, feel free to reach out or check my other projects.

GitHub: LilithDevOps

🧷 License
MIT License – feel free to use, modify, or build upon it.

Written with curiosity, caffeine, and command line trials. ☕
