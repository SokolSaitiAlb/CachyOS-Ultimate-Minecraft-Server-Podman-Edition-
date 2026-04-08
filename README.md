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

   
