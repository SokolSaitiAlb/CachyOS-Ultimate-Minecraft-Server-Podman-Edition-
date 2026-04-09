CachyOS Ultimate Minecraft Server (Podman Edition) 🚀
​This repository contains the configuration for a high-performance Minecraft: Java Edition server, optimized specifically for CachyOS and the BORE Scheduler.
​By utilizing Podman and Java 21, this setup achieves industry-leading MSPT (1.4ms) and perfect 20.0 TPS while maintaining a minimal system footprint.
​🛠 Features
​Containerized Architecture: Managed via Podman-Compose for zero-overhead resource isolation.
​Kernel Optimization: Leverages the CachyOS-BORE kernel for interactive task prioritization.
​Automated Backups: Dedicated volume mapping to secondary storage.
​Advanced Flags: Pre-configured with Aikar's G1GC optimization flags.
​Monitoring: Ready for real-time observability via Netdata and Spark.
​📋 Prerequisites
​OS: CachyOS (Arch-based)
​Container Engine: podman and podman-compose
​Hardware: Optimized for Intel 12th Gen (i5-12400F) + AMD RX 6800
​🚀 Quick Start
​Clone the Repository
git clone https://github.com/SokolSaitiAlb/CachyOS-Ultimate-Minecraft-Server-Podman-Edition-.git
cd CachyOS-Ultimate-Minecraft-Server-Podman-Edition-
​Run the Setup Script
Make the included script executable and run it to install dependencies and deploy the server automatically:
chmod +x setup.sh
./setup.sh
​Check Live Logs
Monitor the server boot process and player activity:
podman logs -f cachyos-mc-server
​📊 Performance Specs
​Engine: PaperMC 1.21.x
​MSPT: 1.25ms (Median)
​RAM Allocation: 4GB
​CPU Threads: 12 (Intel i5-12400F)
​Developed by Alb Kestrel for the Linux Gaming Community.
​🎥 Watch the Full Technical Breakdown
https://youtube.com/c/AlbKestrel
​📊 Verified Performance Report
Spark Profiler Results - 1.25ms MSPT: https://spark.lucko.me/M3urS6chtY