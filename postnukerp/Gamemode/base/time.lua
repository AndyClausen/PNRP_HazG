
//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Time And Date system			//
//											//
//		This will include everything		//
//	 about time and date from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//				   By Andy					//
//////////////////////////////////////////////
funcLoad = 0
PNRP.Time = 0
PNRP.Minute = 0
PNRP.Hour = 0
PNRP.Day = 1
PNRP.Month = 1
PNRP.Year = 0
--print("time.lua running...")
function DaysEachMonth(m,y)
	if m==1 or m==3 or m==5 or m==7 or m==8 or m==10 or m==12 then
		return 31
	elseif m==4 or m==6 or m==9 or m==11 then
		return 30
	elseif m==2 then
		if (2016+y)%4 == 0 then
			return 29
		else
			return 28
		end
	end
end

local monthlist = {"January","February","March","April","May","June","July","August","September","October","November","December"}
function MonthToString(m)
	return monthlist[m]
end

function LoadTimeAndDate()
	--print("LoadTimeAndDate() running...")
	//Check if file exists
	//if it doesn't exist
	if not file.Exists("timedate.txt","DATA") then
		//Make file with 1) current time and 2) current date
		//Also make variables for 1) time and 2) date
		PNRP.Time = 0
		PNRP.Minute = 0
		PNRP.Hour = 0
		PNRP.Day = 1
		PNRP.Month = 1
		PNRP.Year = 0
		file.Write("timedate.txt",PNRP.Time)
		--print("File created!")
	//if file exists
	else
		//Load time and date from file onto variables for 1) time and 2) date
		local results = tonumber(file.Read("timedate.txt","DATA"))
		--print("File-results: Time = "..results)
		PNRP.Time = results
		if PNRP.Time>=60 then //If more than 60 minutes, modulo the minutes
			PNRP.Minute = PNRP.Time%60
			if PNRP.Time>=1440 then //If more than 1440 minutes (60min*24), modulo the hours
				PNRP.Hour = ((PNRP.Time-(PNRP.Time%60))/60)%24 //The remaining hours
				if PNRP.Time>=44640 then //If more than 44640 minutes (1440min*31), modulo the days
					if PNRP.Time>=527040 then //If more than 525600 minutes(365*1440min), check month length (DaysEachMonth)
						local counter = PNRP.Time
						for i=0,10,0.1 do
							--print("Debug: "..PNRP.Time)
							if counter < 0 then PNRP.Year=PNRP.Year-1 break end
							if DaysEachMonth(2,PNRP.Year) == 29 then
								PNRP.Year = PNRP.Year + 1
								counter = counter - 527040
							elseif DaysEachMonth(2,PNRP.Year) == 28 then
								PNRP.Year = PNRP.Year + 1
								counter = counter - 525600
							end
							--print("i: "..i..", counter: "..counter..", PNRP.Year: "..PNRP.Year)
						end
						counter = 44640
						for i=1,12,1 do
							if counter<PNRP.Time-(PNRP.Time%527040) then
								counter = counter+1440*DaysEachMonth(i,PNRP.Year)
							else
								PNRP.Month = i
								break
							end
						end
					else
						PNRP.Year = 0
						
						local counter = 44640
						for i=1,12,1 do
							if counter<PNRP.Time then
								counter = counter+1440*DaysEachMonth(i,PNRP.Year)
							else
								PNRP.Month = i
								break
							end
						end
					end
					for i=1,PNRP.Month-1,1 do
						if i==1 then
							PNRP.Day = ((((PNRP.Time-PNRP.Minute)%((DaysEachMonth(2,PNRP.Year)+337)*1440))/60-PNRP.Hour)/24)+1
						end
						PNRP.Day = PNRP.Day-DaysEachMonth(i,PNRP.Year)
					end
				else
					PNRP.Day = (((PNRP.Time-PNRP.Minute)/60-PNRP.Hour)/24)+1 //Less than a month
					PNRP.Month = 1
					PNRP.Year = 0
				end
			else
				PNRP.Hour = (PNRP.Time-(PNRP.Time%60))/60 //Less than a day
				PNRP.Day = 1
				PNRP.Month = 1
				PNRP.Year = 0
			end
		else
			PNRP.Minute = PNRP.Time
			PNRP.Hour = 0
			PNRP.Day = 1
			PNRP.Month = 1
			PNRP.Year = 0
		end
		-- print("File loaded!")
		-- print("Time: "..PNRP.Time)
		-- print("Minutes: "..PNRP.Minute)
		-- print("Hours: "..PNRP.Hour)
		-- print("Day: "..PNRP.Day)
		-- print("Month: "..PNRP.Month)
		-- print("Year: "..PNRP.Year+2016)
	end
end
hook.Add("Initialize","load_time_date",LoadTimeAndDate)

local MinuteCount = 0
function UpdateTimeAndDate()
	--print("UpdateTimeAndDate() is running...")
	//Make a timer which counts the minutes
	PNRP.Time = PNRP.Time+1
	PNRP.Minute = PNRP.Minute+1
	//If >60 minutes +1 hour (reset to 0)
	if PNRP.Minute >= 60 then
		PNRP.Hour = PNRP.Hour+1
		PNRP.Minute = 0
		for _, ply in pairs(player.GetAll()) do
			--ply:ChatPrint("Another hour has gone...")
		end
	end
	//More than 24 hours - next day (reset to 0)
	if PNRP.Hour >= 24 then
		PNRP.Day = PNRP.Day+1
		PNRP.Hour = 0
		for _, ply in pairs(player.GetAll()) do
			ply:ChatPrint("It's a brand new day!")
		end
	end
	//Month system here: amount of days is different each month (reset to 1st)
	if PNRP.Day > DaysEachMonth(PNRP.Month,PNRP.Year) then
		PNRP.Month =PNRP.Month+1
		PNRP.Day = 1
		for _, ply in pairs(player.GetAll()) do
			ply:ChatPrint("A new month is here!")
		end
	end
	
	//More than 12 months - next year (reset to January)
	if PNRP.Month > 12 then
		PNRP.Year = PNRP.Year+1
		PNRP.Month = 1
		for _, ply in pairs(player.GetAll()) do
			ply:ChatPrint("Happy new year!")
		end
	end
	
	//Save if 4 minutes in-game has gone
	MinuteCount = MinuteCount+1
	if MinuteCount == 4 then
		--print("Running SaveTimeAndDate() from UpdateTimeAndDate()...")
		SaveTimeAndDate()
		MinuteCount = 0
	end
	for _, ply in pairs(player.GetAll()) do
		--[[ply:ChatPrint("Current time: "..PNRP.Hour..":"..PNRP.Minute)
		ply:ChatPrint("Day: "..PNRP.Day)
		ply:ChatPrint("Month: "..MonthToString(PNRP.Month))
		ply:ChatPrint("Year: "..PNRP.Year+2016)]]
	end
	if tonumber(file.Read("timedate.txt",DATA))>PNRP.Time and funcLoad == 1 then
		SaveTimeAndDate()
		--print("saved!")
	end
end
UpdateTimeAndDate()
timer.Create("timeDate",15,0,UpdateTimeAndDate)

function SaveTimeAndDate()
	--print("SaveTimeAndDate() is running...")
	//Save time in file (every 4 minutes in-game)
	//If the time from the file is larger - load it.
	if tonumber(file.Read("timedate.txt",DATA))>PNRP.Time then
		--PNRP.Time = tonumber(file.Read("timedate.txt",DATA))+4
		LoadTimeAndDate()
		--print("Time loaded! Time is: "..PNRP.Time)
	else
		file.Write("timedate.txt",PNRP.Time)
		--print("Time saved! Time is: "..PNRP.Time)
	end
end

util.AddNetworkString("startGetTime")
util.AddNetworkString("getTimeAndDate")
function GetTimeAndDate( len, ply )
	--print("GetTimeAndDate() is running...")
	local TimeTable = {PNRP.Time,PNRP.Minute,PNRP.Hour,PNRP.Day,PNRP.Month,PNRP.Year}
	net.Start("getTimeAndDate")
		--print("Time sent!")
		net.WriteTable(TimeTable)
	net.Send( ply )
end
net.Receive("startGetTime",GetTimeAndDate)

funcLoad = 1
--EOF