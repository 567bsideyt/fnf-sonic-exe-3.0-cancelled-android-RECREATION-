


function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')
	setPropertyFromClass('ClientPrefs', 'songScoreType', 'Score Elapsed') 

    makeLuaText('score', 'SCORE', 0, 30, 635)
    setTextColor('score', 'FFFF00')
    addLuaText('score')  
    
    
    makeLuaText('scorecount', '', 0, 30, 635)
    addLuaText('scorecount')

    makeLuaText('time', 'TIME', 0, 30, 595)
    setTextColor('time', 'FFFF00')
    addLuaText('time') 
	
	makeLuaText('timecount', '', 0, 30, 595)
	addLuaText('timecount')
	
	makeLuaText('misses', 'MISSES', 0, 30, 555)
	setTextColor('misses', 'FFFF00')
	addLuaText('misses')
	
	makeLuaText('missescount', '', 0, 100, 555)
	addLuaText('missescount')
	
	
	setTextSize('missescount', 45)
	setTextSize('misses', 45)
	setTextSize('time', 45)
    setTextSize('score', 45)
    setTextSize('scorecount', 45)
    setTextSize('timecount', 45) 

  

end

function onUpdate(elapsed)

setTextString('missescount', '         ' .. getProperty('songMisses'))
setTextString('scorecount', '               ' .. getProperty('songScore'))
setTextString('timecount', '       '  .. getTextString('timeTxt'))
end 

function onDestroy()
   setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')
end