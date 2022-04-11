# Create VM

1. 按右上角 `Create VM`
1. `System` > 打勾 `Qemu Agent`
1. 安裝 Qemu Agent 程式
    * Qemu Agent 是一個對於虛擬化管理平台與客體虛擬機之間很重要的溝通橋樑。
    * 在 Proxmox VE 裡，Qemu Agent 主要提供兩項功能：
        * 正確下達關機指令給虛擬客體機，而不僅僅依靠 ACPI 指令或 Windows 原則。
        * 當要進行備份時，先通知客體機作業系統凍結 (Freeze) 檔案系統，以確保能夠備份當下所有的檔案內容。在 Windows 作業系統中是呼叫陰影複製服務 (Volume Shadow Copy Service，VSS)。 並非一定要安裝有 Qemu Agent 才能下達正確關機指令，例如客體機作業系統若有支援標準 ACPI (Advanced Configuration and Power Interface，進階組態與電源介面) 協定，也可以接收到來自 Proxmox VE 管理平台所發出的 ACPI 關機要求。

```bash
$ sudo apt-get install qemu-guest-agent
$ sudo systemctl start qemu-guest-agent
```
