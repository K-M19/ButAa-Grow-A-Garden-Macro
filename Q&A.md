# Q&A
> Edit: May 13, 2025
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

**A**: Yes, it is intentional. The macro has been programmed to coordinate with world time. It will go directly to the shop when the world clock hits either 00:00 or 00:05 — i.e., it will go to the shop 5 minutes after the hour.

But if the API that has been included in the macro does not get world time (for example, due to a firewall or antivirus blocking the request), it will fall back to your local time. In that case, it behaves just the same way — it checks if the time is 00:00 or 00:05, and then it goes to the shop after 5 minutes.

This format is simpler for users from different countries and time zones to stay on time. It could, however, take actions a little longer than the in-game alert. For example, if there is a delay of 35–40 seconds before the macro takes action, it most likely means that the API is not working on your system.

If your time zone is not world time standard, don't worry — you won't need to set the system clock. You might notice a slight lag, though.

Time concept overview:
- Local time = your country's system time.
- World time = universal reference time, often on the basis of UTC.
The macro pulls time info from:
- time.is/United_States
- time.is/Canada
- time.is/London

Workarounds?
I've already attempted 9 workarounds to bypass this:

- OCR (Optical Character Recognition):
  Unreliable. It has a tendency to misread in-game messages, like confusing Egg Shop alerts or Windows messages. It's especially inaccurate with the current standard resolution of 800x600, which I set so it can run on all screen sizes.

- Image referencing:
Too cumbersome. It takes and compares a lot of screenshots, and remains 42–50 seconds behind to notice changes — too slow and unstable(It violates my privacy policy, so cannot be used.).

- Mini-A.I. approaches:
  I tried using low-resource machine learning but it consumed 2–3 GB of RAM and up to 35% GPU, which I felt was overkill for a low-resource friendly macro.

So that's a brief overview of how the macro and the API interact, and why there may be some delays based on your system configuration.