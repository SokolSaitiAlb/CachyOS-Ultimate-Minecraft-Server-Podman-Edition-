# CachyOS Ultimate Minecraft Server (Podman Edition) 🚀

This repository contains the configuration for a high-performance Minecraft: Java Edition server, optimized specifically for **CachyOS** and the **BORE Scheduler**. 

By utilizing **Podman** and **Java 25**, this setup achieves industry-leading MSPT (1.4ms) and perfect 20.0 TPS while maintaining a minimal system footprint.

## 🛠 Features
- **Containerized Architecture:** Managed via Podman-Compose for zero-overhead resource isolation.
- **Kernel Optimization:** Leverages the CachyOS-BORE kernel for interactive task prioritization.
- **Automated Backups:** Dedicated volume mapping to secondary 1TB HDD storage.
- **Advanced Flags:** Pre-configured with Aikar's G1GC optimization flags for smooth garbage collection.
- **Monitoring:** Ready for real-time observability via Netdata and Spark.

## 📋 Prerequisites
- OS: CachyOS (Arch-based)
- Container Engine: `podman` and `podman-compose`
- Hardware: Optimized for Intel 12th Gen (i5-12400F) + AMD RX 6800

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/ALBKESTRELYTofficial/minecraft-server-cachyos.git](https://github.com/ALBKESTRELYTofficial/minecraft-server-cachyos.git)
   cd minecraft-server-cachyos
   ```
   2. **Deploy the server:**
   ```bash
   podman-compose up -d
   
   ```
 3. **Check logs:**
   ```bash
   podman logs -f cachyos-mc-server
   
   ```
## 📊 Performance Specs
 * **Engine:** PaperMC 1.21.x
 * **MSPT:** 1.25ms (Median)
 * **RAM Allocation:** 4GB
 * **CPU Threads:** 12 (Intel i5-12400F)
*Developed by **Alb Kestrel** for the Linux Gaming Community.*
```
---
### 🎥 Watch the Full Technical Breakdown
[Alb Kestrel on YouTube](https://youtube.com/@ALBKESTRELYTofficial)

### 📊 Verified Performance Report
Check the real-world benchmarks from this setup:
[Spark Profiler Results - 1.25ms MSPT](https://spark.lucko.me/M3urS6chtY)
---
If you run this script
setup. sh
```
bash
#!/bin/bash echo "Installing Netdata and Podman..."
sudo pacman -S --needed netdata
podman podman-compose
sudo systemctl enable --now netdata echo "Deploying Minecraft
Server..."
podman-compose up -d echo "Setup Complete! Visit http:// localhost:19999 for metrics."
```

Don't forget to make it executable: by
```
chmod +x setup.sh

 ```
