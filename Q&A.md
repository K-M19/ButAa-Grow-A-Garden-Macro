# Q&A
> Edit: june 20, 2025
----
## ❓ Q: Is this software a virus (RAT - Trojan)?

### 🐀 A: (RAT)
This software is a macro tool focused on automating your mouse and keyboard interactions in the game. Due to this behavior, some antivirus tools may mistakenly flag it as a RAT (Remote Access Trojan), which usually implies someone remotely controlling your computer. However, in this case, the macro is the one performing automated actions locally—no remote access is involved.

### 🛡️ A: (Trojan)
This software does **not** contain any Trojan. The macro has been verified as **safe and legitimate** by Microsoft Defender Antivirus. However, on rare occasions, some new updates may be flagged temporarily because Microsoft’s validation system has not yet processed them. This issue is usually resolved within a few hours after the macro is submitted to Microsoft for review.

### ⚠️ "Win32/Wacapew.C!ml"
This is a **false positive** warning from Windows Defender. It usually appears when the macro hasn't finished its validation process. This delay is expected because the macro uses a built-in DRM system, which registers an activation key into `regedit.exe` to prevent cracked versions or attempts to block the software’s server connection. This DRM ensures you’re using a standard, untampered version of the macro. Cracked versions will not be allowed to run.

----


## **Q**: Virus or malware notification from VirusTotal or Anti-Virus(Windows).

**A**: AutoHotkey, when compiled into an .exe, is often flagged by antivirus software as a virus because of the way it packages scripts into an executable file. This behavior is similar to that of malware (automatically simulating keystrokes, compressed code, etc.), which makes antivirus engines suspicious.

However, uploading a file to VirusTotal and seeing a few alerts does NOT mean the file is actually a virus. VirusTotal simply aggregates results from various antivirus engines, and false positives are common.

If your script doesn't contain any malicious behavior and only uses basic features, it's almost certainly safe. To reduce false positives, you can disable compression during compilation, use a custom icon, and avoid code obfuscation.

In short: AutoHotkey is not a virus, it's just often misunderstood — because it can control your mouse and keyboard just like the macro I made. That's why licenses and terms were created — to affirm its safety and set a standard.

Tip: If you've ever created a macro with AutoHotkey and then used Ahk2Exe (bundled with AutoHotkey during installation), you'll know that even a simple macro will often be flagged as a virus.

Here's an example:
1. Create a file named "Test.ahk"
2. Its contents are: `MsgBox, Hello.`
3. Run "Test.ahk" and it will show a simple message box saying "Hello."
4. Now, use Ahk2Exe located in the AutoHotkey installation folder
5. In the "Main Parameters", select the "Test.ahk" file
6. Click the "Convert" button
7. The result will be flagged by Windows as a virus, even though it's just a basic script saying "MsgBox, Hello." Upload it to VirusTotal, and again — it will likely be flagged as a virus.

About using VirusTotal:
- Uploading to VirusTotal and seeing red warnings might make regular users avoid the file, but for people like me — or us — we actually check the "Relations" and "Behavior" tabs to understand how the file works. And surprise: there’s no actual virus — it’s just a behavior antivirus doesn’t understand.

And here is the autohotkey documentation as well.
- https://www.autohotkey.com/docs/v1/FAQ.htm#Virus
- https://www.autohotkey.com/boards/viewtopic.php?t=97843

----

## **Q**: Delayed for when the ship restock notification. It works still, but it takes like 35-40 seconds to go to the shops.

**A**
- **TimeAPI**: `TimeAPI` has been removed because ***Time.is*** has blocked access to their API service since May 20.
The macro will now rely on your device’s local time.
- 🔸 Important: If your system time does not match the time on `time.is/Canada`, you may experience a delay of 30–60 seconds.
- 🔸 Just make sure the **minutes and seconds** match — the hour doesn’t matter.