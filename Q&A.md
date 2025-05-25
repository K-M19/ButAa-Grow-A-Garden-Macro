# Q&A
> Edit: May 17, 2025
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