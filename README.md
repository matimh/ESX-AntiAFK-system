# MH AntiAFK (for ESX)

**MH AntiAFK** is a lightweight and optimized script that helps keep your FiveM server active by automatically kicking inactive players.  
It checks player activity every **5 minutes**, and if a player has not moved and does not belong to an exempt group defined in the config, they will be kicked from the server.  

---

##  Features
-  Automatic AFK detection every **5 minutes**  
-  Configurable exempt groups (staff, whitelist roles, etc.)  
-  Lightweight and optimized for performance  
-  Easy setup with a simple configuration file  
-  Keeps server slots free for active players  

---

##  Configuration
- Define the **groups** that should be exempt from AFK checks in `config.lua`  
- Adjust the **AFK timer** to fit your server needs  in `client.lua` in `local afkThreshold = 1 * 60 ` change te "1" to other number (minutes)

---

##  Why use MH AntiAFK?
This script ensures that players who are inactive don’t take up valuable server slots.  
By removing AFK players automatically, it improves the overall gameplay experience and makes sure there is always room for active community members.  

---

##  License
This resource is open for personal use and server deployment. Redistribution without permission is not allowed.  
