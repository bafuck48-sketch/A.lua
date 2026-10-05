-- ==========================================
-- 🅰️JJANS
-- แปลไทยโดย : บาฟัค
-- Version : Final (รวมภาษาไทยเเละอัพอีเว้นภาษาไทย )
-- ==========================================

local GuiService = gethui and gethui() or game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

-- ==========================================
-- 1. DICTIONARY (คำศัพท์ทั้งหมด)
-- ==========================================

local dict = {
    -- 🌟 เปลี่ยนเครดิตผู้แปลเดิม (Zuwz -> บาฟัค)
    ["แปลโดย Zuwz"] = "แปลไทยโดย : บาฟัค",
    ["Zuwz"] = "บาฟัค",

    -- 🏠 เมนูหลัก
    ["หน้าแรก"] = "🏠 หน้าแรก",
    ["ระบบอัตโนมัติ"] = "⚙️ ระบบอัตโนมัติ",
    ["กิจกรรม"] = "🎁 กิจกรรม",
    ["Predictor"] = "🔮 คาดการณ์",
    ["อื่น ๆ"] = "📦 อื่นๆ",
    ["ค้นหา..."] = "🔎 ค้นหา...",

    -- 🥚 แผงขโมย (Steal Panel)
    ["Steal Panel"] = "🥚 แผงควบคุมการขโมย",
    ["Best Rarity"] = "💎 หายากที่สุด",
    ["Money/Sec"] = "💰 เงิน/วินาที",
    ["น้ำหนัก"] = "⚖️ น้ำหนัก",
    ["มูลค่า"] = "💰 มูลค่า",
    ["Auto Steal"] = "🥚 ออโต้ขโมย",
    ["Instant Steal"] = "⚡ ขโมยทันที",
    ["Bring pets back instantly (Fast Steal method)."] = "นำสัตว์กลับมาทันที (วิธี Fast Steal)",
    ["Automatically steal new pets as they appear."] = "ขโมยสัตว์ใหม่อัตโนมัติเมื่อปรากฏตัว",
    ["ขโมย"] = "ขโมย",
    ["ขโมยทั้งหมด"] = "ขโมยทั้งหมด",
    ["Steal Selected"] = "ขโมยที่เลือก",
    ["Selected Value:"] = "มูลค่าที่เลือก:",
    ["selected"] = "เลือกแล้ว",
    ["pets"] = "ตัว",
    ["Lock"] = "🔒 ล็อก",

    -- 📊 แผงสถิติ (Stats Panel)
    ["Stats Panel"] = "📊 แผงสถิติ",
    ["Stats"] = "📊 สถิติ",
    ["Economy"] = "💰 เศรษฐกิจ",
    ["Income"] = "📈 รายได้",
    ["Treadmill"] = "🏃 ลู่วิ่ง",
    ["Astral x3000"] = "🌟 Astral x3000",
    ["next: Guardian x8500"] = "ถัดไป: Guardian x8500",
    ["Status"] = "📋 สถานะ",
    ["ACTIVITY RUNNING"] = "🟢 กำลังทำงาน",
    ["1 automation on"] = "เปิดระบบอัตโนมัติ 1 อย่าง",
    ["Overview"] = "📊 ภาพรวม",
    ["TOTAL STATS"] = "สถิติรวม",
    ["Top Pets"] = "🏆 สัตว์เลี้ยงอันดับต้นๆ",
    ["View All"] = "ดูทั้งหมด",
    ["Stealing"] = "🥚 การขโมย",
    ["EGGS STOLEN"] = "ไข่ที่ขโมยได้",
    ["BEST STEAL"] = "การขโมยที่ดีที่สุด",
    ["None yet"] = "ยังไม่มี",
    ["Steal History"] = "📜 ประวัติการขโมย",
    ["No steals yet!"] = "ยังไม่มีการขโมย!",
    ["You haven't stolen any eggs yet."] = "คุณยังไม่ได้ขโมยไข่เลย",
    ["Top 10"] = "🏆 10 อันดับแรก",
    ["NIGHT TIMER"] = "⏳ ตัวจับเวลากลางคืน",
    ["SESSION TIME"] = "⏱️ เวลาเล่น",
    ["Dr Scramble"] = "🧪 Dr Scramble",
    ["MECH PORTAL"] = "🌀 ประตู Mech",
    ["until open"] = "จนกว่าจะเปิด",
    ["BOSS MASTERY"] = "🏆 ความชำนาญบอส",
    ["next reward at"] = "รางวัลถัดไปที่",
    ["Boss Kills"] = "บอสที่ฆ่าได้",
    ["SAMPLES"] = "🧪 ตัวอย่าง",
    ["scrambled pets"] = "สัตว์ที่ Scrambled",
    ["MECH FIGHTS"] = "การต่อสู้ Mech",
    ["none yet"] = "ยังไม่มี",
    ["LAB"] = "🧪 LAB",
    ["Unstable DNA pity"] = "การันตี DNA ไม่เสถียร",
    ["No requests yet"] = "ยังไม่มีคำขอ",
    ["Pets Deployed"] = "🐾 สัตว์ที่วางไว้",
    ["Eggs 0 ready, 0 growing"] = "ไข่ พร้อม 0 กำลังโต 0",
    ["LAN"] = "🌐 LAN",
    ["players"] = "ผู้เล่น",
    ["NIGHT TIMER eggs reset"] = "⏳ ตัวจับเวลากลางคืน (ไข่รีเซ็ต)",

    -- ⚙️ ระบบอัตโนมัติ (Auto System)
    ["ลำดับเป้าหมาย"] = "🎯 ลำดับเป้าหมาย",
    ["น้ำหนักมากสุดก่อน"] = "⚖️ น้ำหนักมากสุดก่อน",
    ["Highest KG First"] = "⚖️ น้ำหนักมากสุดก่อน",
    ["Rarest"] = "💎 หายากที่สุด",
    ["Highest Earnings"] = "💰 รายได้สูงสุด",
    ["UnIndexed"] = "📖 ยังไม่ถูกจัดอันดับ",
    ["Instant Steal Steps:"] = "⚡ ขั้นตอนการขโมยทันที:",
    ["Speed:"] = "💨 ความเร็ว:",
    ["ขโมยที่เลือกอัตโนมัติ"] = "ออโต้ขโมยที่เลือก",
    ["ขโมยทั้งหมดอัตโนมัติ"] = "ออโต้ขโมยทั้งหมด",
    ["น้ำหนักขั้นต่ำ (0 = ทั้งหมด)"] = "น้ำหนักขั้นต่ำ (0 = ทั้งหมด)",
    ["วิธีเคลื่อนที่"] = "🚀 วิธีเคลื่อนที่",
    ["Fast Steal"] = "⚡ ขโมยเร็ว",
    ["Normal Steal"] = "🚶 ขโมยปกติ",
    ["Instant Tp To Egg"] = "⚡ วาร์ปไปหาไข่ทันที",
    ["ตีผู้เล่นอัตโนมัติ"] = "ออโต้ตีผู้เล่น",
    ["ล่องหน [OP]"] = "👻 ล่องหน [OP]",
    ["เปิดเปลี่ยนเซิร์ฟเวอร์"] = "🌐 เปิดเปลี่ยนเซิร์ฟเวอร์",
    ["เปลี่ยนเซิร์ฟเวอร์เมื่อ"] = "เปลี่ยนเซิร์ฟเวอร์เมื่อ",
    ["ไม่มีไข่ตรงเงื่อนไข"] = "ไม่มีไข่ตรงเงื่อนไข",
    ["เกณฑ์เปลี่ยนเซิร์ฟเวอร์:"] = "เกณฑ์เปลี่ยนเซิร์ฟเวอร์:",
    ["ขโมยไข่ที่ดีที่สุด 1 ฟอง"] = "ขโมยไข่ที่ดีที่สุด 1 ฟอง",
    ["1 Player Server"] = "👤 เซิร์ฟเวอร์ผู้เล่น 1 คน",
    ["เคลื่อนที่ไปเขตปลอดภัย"] = "🏃 เคลื่อนที่ไปเขตปลอดภัย",
    ["No Matching Eggs"] = "❌ ไม่มีไข่ที่ตรงเงื่อนไข",
    ["Timed Interval"] = "⏱️ ตามช่วงเวลา",
    ["After Steal Count"] = "🔢 หลังจากขโมยครบจำนวน",
    ["ป้องกน"] = "🛡️ ป้องกัน",
    ["เอฟเฟกต์เส้นทาง"] = "✨ เอฟเฟกต์เส้นทาง",
    ["ตีรอบตัวเองอัตโนมัติ"] = "ออโต้ตีรอบตัวเอง",
    ["ระยะตีรอบตัวเอง"] = "ระยะตีรอบตัวเอง",
    ["ช่วงห่างการโจมตี"] = "ช่วงห่างการโจมตี",
    ["ถือไม้ตีอัตโนมัติ"] = "ออโต้ถือไม้ตี",
    ["ป้องกันการถูกตี"] = "🛡️ ป้องกันการถูกตี",
    ["Capture Egg"] = "🥚 จับไข่",
    ["ป้องกันกับดัก"] = "🛡️ ป้องกันกับดัก",
    ["อัพเกรด"] = "⬆️ อัปเกรด",
    ["ใช้สัตว์เลี้ยงที่ดีที่สุดอัตโนมัติ"] = "ออโต้ใช้สัตว์เลี้ยงที่ดีที่สุด",
    ["ฝึกลู่วิ่งอัตโนมัติ"] = "ออโต้ฝึกลู่วิ่ง",
    ["อัปเกรดลู่วิ่งอัตโนมัติ"] = "ออโต้ลู่วิ่ง",
    ["อัปเกรดฐานอัตโนมัติ"] = "ออโต้ฐาน",
    ["เงินสำรอง"] = "💰 เงินสำรอง",
    ["Auto Buy Best Trail"] = "ออโต้ซื้อ Trail ที่ดีที่สุด",
    ["Auto Buy Trail"] = "ออโต้ซื้อ Trail",
    ["Trail Wanted"] = "👣 Trail ที่ต้องการ",
    ["Grey Trail"] = "👣 Grey Trail",
    ["Auto Equip Best Trail"] = "ออโต้ใส่ Trail ที่ดีที่สุด",
    ["Removes player traps around you"] = "ลบกับดักผู้เล่นรอบตัวคุณ",

    -- 🥚 ฟัก/วางไข่
    ["การกลายพันธุ์"] = "🧬 การกลายพันธุ์",
    ["Select options..."] = "เลือกตัวเลือก...",
    ["Min $/s (0 = any)"] = "💰 เงิน/วินาที ขั้นต่ำ (0 = เท่าไหร่ก็ได้)",
    ["วางที่เลือกอัตโนมัติ"] = "ออโต้วางที่เลือก",
    ["วางทั้งหมดอัตโนมัติ"] = "ออโต้วางทั้งหมด",
    ["Auto Hatch Selected"] = "ออโต้ฟักที่เลือก",
    ["Auto Hatch All"] = "ออโต้ฟักทั้งหมด",
    ["Auto Favorite Pets"] = "❤️ ออโต้ถูกใจสัตว์เลี้ยง",
    ["ประเภท"] = "📦 ประเภท",
    ["ระดับความหายาก"] = "💎 ระดับความหายาก",
    ["Auto Favorite Equipped"] = "❤️ ออโต้ถูกใจที่ใส่อยู่",
    ["Unfavorite All"] = "💔 ยกเลิกถูกใจทั้งหมด",

    -- 💰 ขายไข่/สัตว์
    ["Egg Names"] = "🥚 ชื่อไข่",
    ["Egg Rarities"] = "💎 ระดับไข่",
    ["Auto Sell Eggs"] = "💰 ออโต้ขายไข่",
    ["Sell Below $/s (0 = off)"] = "💰 ขายต่ำกว่า $/วินาที (0 = ปิด)",
    ["Auto Sell Pets"] = "💰 ออโต้ขายสัตว์เลี้ยง",

    -- 🔧 หมวด Fuse
    ["Fuse"] = "🔧 ฟิวส์",
    ["Auto Fuse Pets"] = "🔧 ออโต้ผสมสัตว์เลี้ยง",
    ["Fuse Rarities"] = "💎 ระดับที่ต้องการผสม",
    ["Fuse Mutations"] = "🧬 การกลายพันธุ์ที่ต้องการผสม",
    ["Pick Group By"] = "📊 เลือกกลุ่มตาม",
    ["Highest Rarity"] = "💎 หายากสุดก่อน",
    ["Lowest Rarity"] = "⚪ ธรรมดาสุดก่อน",
    ["Most Count"] = "🔢 จำนวนมากสุดก่อน",
    ["Least Count"] = "🔢 จำนวนน้อยสุดก่อน",
    ["Never Fuse Mutated"] = "🚫 ห้ามผสมสัตว์ที่มี Mutation",
    ["Never Fuse Equipped"] = "🚫 ห้ามผสมสัตว์ที่ใส่อยู่",
    ["Auto Complete Reveal"] = "⚡ ออโต้ข้ามการเปิดการ์ด",
    ["Maximum Scale to Fuse:"] = "📏 ขนาดสูงสุดที่ผสมได้:",
    ["Keep Per Pet Type:"] = "📦 เก็บสัตว์แต่ละประเภทไว้:",
    ["Fuse Interval:"] = "⏱️ ช่วงเวลาผสม:",
    ["Fuse Now"] = "🔧 ผสมตอนนี้",

    -- 🧪 หมวด Scramble Lab
    ["Scramble Lab Automation"] = "🧪 ระบบอัตโนมัติ Scramble Lab",
    ["Auto Steal Required Eggs"] = "🥚 ออโต้ขโมยไข่ที่ต้องการ",
    ["Stop After Requirement Met"] = "🛑 หยุดเมื่อครบเงื่อนไข",
    ["Auto Place Lab Egg"] = "🥚 ออโต้วางไข่ Lab",
    ["Auto Hatch Lab Egg"] = "🥚 ออโต้ฟักไข่ Lab",
    ["Auto Sacrifice Eggs"] = "🔪 ออโต้สังเวยไข่",
    ["Egg Banner"] = "🎟️ แบนเนอร์ไข่",
    ["สลับกับญาติให้เสร็จ"] = "🔄 สลับให้เสร็จ",
    ["Scramble Lab"] = "🧪 Scramble Lab",
    ["Banner:"] = "🎟️ แบนเนอร์:",
    ["Rotates in:"] = "🔄 รีเฟรชใน:",
    ["Pity:"] = "🎯 การันตี:",
    ["สัตว์ที่ต้องใช้:"] = "🐾 สัตว์ที่ต้องใช้:",
    ["Status:"] = "📋 สถานะ:",
    ["Eggs Ready"] = "ไข่พร้อม",
    ["Missing"] = "ที่ขาด",
    ["Open Lab Window"] = "🪟 เปิดหน้าต่าง Lab",
    ["Teleport to Scramble Lab"] = "🚀 วาร์ปไป Scramble Lab",
    ["Biohazard Pets"] = "☣️ สัตว์ Biohazard",
    ["Experimental Pets"] = "🧪 สัตว์ทดลอง",
    ["Unstable DNA"] = "🧬 DNA ไม่เสถียร",
    ["Swordfish (Epic):"] = "🐟 ปลากระโทง (Epic):",
    ["Shark (Legendary):"] = "🦈 ฉลาม (Legendary):",
    ["Ankylosaurus (Mythic):"] = "🦕 แองคิโลซอรัส (Mythic):",

    -- 👹 หมวด Dr. Scramble Boss
    ["Dr. Scramble Boss"] = "👹 บอส Dr. Scramble",
    ["Auto Enter Boss"] = "🚪 ออโต้เข้าบอส",
    ["สู้ออโต้"] = "⚔️ สู้อัตโนมัติ",
    ["Fast Swing (Tool Swap)"] = "⚡ ตีเร็ว (สลับอาวุธ)",
    ["รับรางวัลมาเตอรี่ออโต้"] = "🏆 ออโต้รับรางวัล Mastery",
    ["ความเร็วเคลื่อนที่:"] = "💨 ความเร็วเคลื่อนที่:",
    ["Boss: Next in"] = "👹 บอส: ครั้งถัดไปใน",
    ["นาที"] = "นาที",
    ["วินาที"] = "วินาที",
    ["Auto Buy Shop"] = "🛒 ออโต้ซื้อของร้าน",
    ["Shop Items"] = "📦 ไอเท็มร้านค้า",
    ["Scrambled Mutation"] = "🧬 การกลายพันธุ์ Scrambled",
    ["2x Cash Booster"] = "💰 บูสต์เงิน x2",
    ["1.25x Speed"] = "💨 บูสต์ความเร็ว x1.25",
    ["2x Treadmill Booster"] = "🏃 บูสต์ลู่วิ่ง x2",

    -- ✨ หมวด Wisp Event
    ["Wisp Event"] = "✨ กิจกรรม Wisp",
    ["Wisp: not met yet"] = "👻 Wisp: ยังไม่ผ่านเงื่อนไข",
    ["Auto Beanstalk Event"] = "🌱 ออโต้กิจกรรมต้นถั่ว",
    ["Auto Wisp Quests"] = "👻 ออโต้ทำเควส Wisp",
    ["Auto Fuse For Quest"] = "🔧 ออโต้ผสมเพื่อทำเควส",
    ["Automate Eggs For Fuse"] = "🥚 ออโต้เตรียมไข่สำหรับผสม",
    ["Allowed Fuse Rarities"] = "💎 ระดับที่อนุญาตให้ผสม",
    ["Steal Wisp Quest Eggs"] = "🥚 ขโมยไข่เควส Wisp",
    ["Auto Claim Butterfly Net"] = "🦋 ออโต้รับตาข่ายจับผีเสื้อ",
    ["Auto Catch Butterflies"] = "🦋 ออโต้จับผีเสื้อ",
    ["Auto Essence"] = "✨ ออโต้ Essence",
    ["Auto Banjo Cricket"] = "🦗 ออโต้ Banjo Cricket",
    ["Stops Moving On Red Light"] = "🛑 หยุดเคลื่อนที่เมื่อไฟแดง",
    ["Open Wisp Window"] = "🪟 เปิดหน้าต่าง Wisp",

    -- 🧬 หมวด Mutation Items
    ["Mutation Items"] = "🧬 ไอเท็มการกลายพันธุ์",
    ["Shards"] = "💎 เศษผลึก (Shards)",
    ["Scrambled"] = "🧪 Scrambled",
    ["Enchanted"] = "✨ Enchanted",
    ["Auto Mutate Egg"] = "🧬 ออโต้ใช้ไอเท็มกลายพันธุ์",

    -- 🔮 หมวด Egg Predictor
    ["Egg Predictor"] = "🔮 คาดการณ์ไข่",
    ["Search by pet name, mutation, status..."] = "ค้นหาด้วยชื่อสัตว์, การกลายพันธุ์, สถานะ...",
    ["Tap an egg below to preview it"] = "แตะที่ไข่ด้านล่างเพื่อดูตัวอย่าง",
    ["In inventory"] = "ในกระเป๋า",
    ["IN INVENTORY"] = "ในกระเป๋า",
    ["eggs"] = "ไข่",
    ["ready"] = "พร้อม",
    ["growing"] = "กำลังโต",
    ["in bag"] = "ในกระเป๋า",
    ["Total"] = "รวม",
    ["Sort By"] = "↕️ เรียงตาม",
    ["Value"] = "💰 มูลค่า",
    ["Time Left"] = "⏳ เวลาที่เหลือ",
    ["Scale"] = "📏 ขนาด",
    ["Rarity"] = "💎 ความหายาก",

    -- 🏃 หมวด Movement & Physics
    ["Movement & Physics"] = "🏃 การเคลื่อนที่และฟิสิกส์",
    ["Enable Speed"] = "💨 เปิดใช้ความเร็ว",
    ["Speed Value:"] = "💨 ค่าความเร็ว:",
    ["Infinite Jump"] = "🦘 กระโดดไม่จำกัด",
    ["Fly"] = "🕊️ บิน",
    ["Fly Speed:"] = "💨 ความเร็วในการบิน:",
    ["Anti AFK"] = "💤 กันหลุด (Anti AFK)",
    ["Instant Interact"] = "⚡ โต้ตอบทันที",
    ["Auto Execute"] = "🚀 ออโต้รันสคริปต์",

    -- 🌐 หมวด Misc & Webhook
    ["Auto Reconnect"] = "🔄 ออโต้เชื่อมต่อใหม่",
    ["Hide Pets"] = "🙈 ซ่อนสัตว์เลี้ยง",
    ["FPS Boost"] = "🚀 เพิ่ม FPS",
    ["Join our discord server"] = "💬 เข้าร่วมดิสคอร์ดของเรา",
    ["Webhook"] = "🔗 เว็บฮุค",
    ["Enable Webhook"] = "🔗 เปิดใช้งานเว็บฮุค",
    ["Webhook URL"] = "🔗 URL เว็บฮุค",
    ["Discord User ID (ping)"] = "🆔 Discord User ID (ping)",
    ["Mention @everyone"] = "📢 Mention @everyone",
    ["Log Disconnect / Reconnect"] = "📜 บันทึกการหลุด/เชื่อมต่อใหม่",
    ["Send Test Post"] = "📤 ส่งข้อความทดสอบ",

    -- 👁️ หมวด Visuals / ESP
    ["Visuals"] = "👁️ การมองเห็น (Visuals)",
    ["ESP Eggs"] = "🥚 ESP ไข่",
    ["ESP Rarities"] = "💎 ระดับ ESP",
    ["ESP Show Info"] = "📋 แสดงข้อมูล ESP",
    ["ESP Min Value"] = "💰 มูลค่าขั้นต่ำ ESP",
    ["ESP Egg Size:"] = "📏 ขนาด ESP ไข่:",
    ["Hatch Outcome ESP"] = "👁️ ESP ผลการฟัก",
    ["Hatch Outcome Rarities"] = "💎 ระดับผลการฟัก",
    ["Hatch Outcome Show Info"] = "📋 แสดงข้อมูลผลการฟัก",
    ["Hatch Outcome Min Value"] = "💰 มูลค่าขั้นต่ำผลการฟัก",
    ["Hatch Outcome ESP Size:"] = "📏 ขนาด ESP ผลการฟัก:",
    ["ESP Guards"] = "🛡️ ESP ยาม",
    ["ESP Guard Size:"] = "📏 ขนาด ESP ยาม:",
    ["ESP Players"] = "👥 ESP ผู้เล่น",
    ["ESP Player Size:"] = "📏 ขนาด ESP ผู้เล่น:",

    -- 📁 หมวด Configuration
    ["Configuration"] = "📁 การตั้งค่า (Config)",
    ["Config name"] = "📝 ชื่อคอนฟิก",
    ["Create config"] = "➕ สร้างคอนฟิก",
    ["Config list"] = "📋 รายการคอนฟิก",
    ["Load config"] = "📂 โหลดคอนฟิก",
    ["Overwrite config"] = "💾 เขียนทับคอนฟิก",
    ["Delete config"] = "🗑️ ลบคอนฟิก",
    ["Refresh list"] = "🔄 รีเฟรชรายการ",
    ["Set as autoload"] = "🚀 ตั้งเป็นออโต้โหลด",
    ["Reset autoload"] = "🔄 รีเซ็ตออโต้โหลด",
    ["Current autoload config: none"] = "คอนฟิกออโต้โหลดปัจจุบัน: ไม่มี",

    -- 📜 หมวด Webhook Status
    ["สถานะ:"] = "📋 สถานะ:",
    ["Posted:"] = "📤 โพสต์แล้ว:",
    ["Queued:"] = "⏳ ในคิว:",
    ["No filter set – every egg posts."] = "ไม่ได้ตั้งค่าตัวกรอง – จะโพสต์ทุกไข่",
    ["Last post failed:"] = "❌ โพสต์ล่าสุดล้มเหลว:",

    -- 🔮 หมวด Fuse Predictor (ตกค้าง)
    ["Fuse Predictor"] = "🔮 คาดการณ์การผสม",
    ["Machine is empty"] = "⚙️ เครื่องว่างเปล่า",
    ["Load 3 of the same species to see the result odds"] = "ใส่สัตว์ชนิดเดียวกัน 3 ตัวเพื่อดูโอกาสผลลัพธ์",
    ["FUSE MACHINE STATUS"] = "📋 สถานะเครื่องผสม",
    ["PETS"] = "ตัว",

    -- 🔮 หมวด Scramble Predictor (ตกค้าง)
    ["Scramble Predictor"] = "🧪 คาดการณ์ Scramble",
    ["[ACTIVE]"] = "🟢 [กำลังทำงาน]",
    ["Banner chance"] = "🎟️ โอกาสออกแบนเนอร์",
    ["Free rerolls"] = "🎲 สุ่มฟรี",
    ["CURRENT RECIPE"] = "📜 สูตรปัจจุบัน",
    ["REWARD ODDS"] = "🎁 โอกาสได้รับรางวัล",
    ["NEXT TIME EACH BANNER OPENS"] = "⏰ เวลาเปิดแบนเนอร์ครั้งถัดไป",
    ["UPCOMING BANNERS"] = "🔜 แบนเนอร์ที่กำลังจะมาถึง",
    ["Open now"] = "🟢 เปิดอยู่ตอนนี้",
    ["chance"] = "โอกาส",
    ["in"] = "ในอีก",
    ["Chase pet"] = "🏃 สัตว์ที่ต้องวิ่งตาม",

    -- 🏆 ระดับความหายาก (ตกค้าง)
    ["Divine"] = "✨ ศักดิ์สิทธิ์",
    ["Eternal"] = "♾️ นิรันดร์",
    ["Secret"] = "🔮 ลับ",
    ["Cosmic"] = "🌌 คอสมิก",
    ["Mythic"] = "🔴 มิธิค",
    ["Legendary"] = "🟠 ตำนาน",
    ["Epic"] = "🟣 อีปิค",
    ["Rare"] = "🔵 แรร์",
    ["Uncommon"] = "🟢 ไม่ธรรมดา",
    ["Common"] = "⚪ ธรรมดา",

    -- 🦖 ชื่อสัตว์/ไข่ (ตกค้าง)
    ["Gargoyle"] = "🗿 การ์กอยล์",
    ["Pure Jellyfish"] = "🪼 แมงกะพรุนบริสุทธิ์",
    ["Sharkodile"] = "🦈 ฉลามจระเข้",
    ["Rhinobear"] = "🦏 แรดหมี",
    ["Octophant"] = "🐙 ปลาหมึกช้าง",
    ["Nuclear Mantis"] = "☢️ ตั๊กแตนนิวเคลียร์",
    ["Dreadstinger"] = "🦂 แมงป่องสะพรึง",
    ["Swordfish"] = "🐟 ปลากระโทง",
    ["Shark"] = "🦈 ฉลาม",
    ["Ankylosaurus"] = "🦕 แองคิโลซอรัส",
}
-- ==========================================
-- 2. LOWERCASE DICTIONARY
-- ==========================================

local lowerDict = {}
for key, value in pairs(dict) do
    lowerDict[string.lower(key)] = value
end

-- ==========================================
-- 3. DYNAMIC TEXT (ข้อความที่เปลี่ยนตามเวลา)
-- ==========================================

local function translateDynamicText(txt)
    local newTxt = txt

    newTxt = newTxt:gsub("^Speed: (%d+)", "💨 ความเร็ว: %1")
    newTxt = newTxt:gsub("^Instant Steal Steps: (%d+)", "⚡ ขั้นตอนขโมยทันที: %1")
    newTxt = newTxt:gsub("(%d+) pets", "%1 ตัว")
    newTxt = newTxt:gsub("(%d+) selected", "เลือกแล้ว %1")
    newTxt = newTxt:gsub("(%d+) eggs", "%1 ไข่")
    newTxt = newTxt:gsub("(%d+) ready", "พร้อม %1")
    newTxt = newTxt:gsub("(%d+) growing", "กำลังโต %1")
    newTxt = newTxt:gsub("(%d+) in bag", "ในกระเป๋า %1")
    newTxt = newTxt:gsub("in (%d+)m", "ในอีก %1 นาที")
    newTxt = newTxt:gsub("in (%d+)h (%d+)m", "ในอีก %1 ชม. %2 นาที")

    return newTxt
end

-- ==========================================
-- 4. TRANSLATE OBJECT
-- ==========================================

local function translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end

        local currentText = obj.Text
        local dynamicText = translateDynamicText(currentText)

        if dynamicText ~= currentText then
            obj.Text = dynamicText
            currentText = dynamicText
        end

        local cleanText = currentText:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
        if cleanText then
            local translated = lowerDict[string.lower(cleanText)]
            if translated then
                obj.Text = translated
            end
        end

        if obj:IsA("TextBox") then
            local placeholder = obj.PlaceholderText or ""
            local cleanPlaceholder = placeholder:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
            if cleanPlaceholder then
                local translatedPlaceholder = lowerDict[string.lower(cleanPlaceholder)]
                if translatedPlaceholder then
                    obj.PlaceholderText = translatedPlaceholder
                end
            end
        end
    end)
end

-- ==========================================
-- 5. HOOK OBJECT
-- ==========================================

local function hookObject(obj)
    translateText(obj)

    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end

        if obj:GetAttribute("Hooked_AJJANS") then
            return
        end

        obj:SetAttribute("Hooked_AJJANS", true)
        obj:GetPropertyChangedSignal("Text"):Connect(function()
            translateText(obj)
        end)

        if obj:IsA("TextBox") then
            obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                translateText(obj)
            end)
        end
    end)
end

-- ==========================================
-- 6. SCAN & HOOK UI
-- ==========================================

for _, obj in ipairs(GuiService:GetDescendants()) do
    hookObject(obj)
end

GuiService.DescendantAdded:Connect(function(obj)
    task.wait(0.05)
    hookObject(obj)
end)

-- ==========================================
-- 7. NOTIFICATION
-- ==========================================

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "🅰️JJANS",
        Text = "แปลไทยโดย : บาฟัค พร้อมใช้งานเเล้ว ✅",
        Duration = 5
    })
end)

-- ==========================================
-- 8. LOAD AJJANS
-- ==========================================

local success, err = pcall(function()
    loadstring(game:HttpGet("https://loader.scriptdee.com/loaders/stelaeggs/ajjans.lua"))()
end)

if not success then
    warn("❌ 🅰️JJANS โหลดไม่สำเร็จครับ:")
    warn(err)
else
    print("✅ 🅰️JJANS โหลดสำเร็จครับ")
    print("แปลไทยโดย : บาฟัค")
end