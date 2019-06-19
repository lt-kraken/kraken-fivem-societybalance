ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterCommand('societybalance', function(source, args) 
    GetSocietyBalance(ESX.PlayerData.job.name)
end)

function GetSocietyBalance(society) 
    local isBoss = nil
	
	ESX.TriggerServerCallback('societybalance:isBoss', function(result)
		isBoss = result
	end, society)

    while isBoss == nil do		
       Citizen.Wait(100)
    end

    if not isBoss then	
	
		local message = string.format('Hey! I\'m sorry but I can not provide you the information without the boss\' approval.')
		DisplayMessage(society, message)
		
        return
    end

    ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(societyBalanceAmount)
       		
		local message = string.format('Hey boss! According to our books our balance is estimated at ~g~$%s~s~', ESX.Math.GroupDigits(societyBalanceAmount))		
		DisplayMessage(society, message)
        
    end, society)
end

function DisplayMessage(society, message) 

	SetNotificationTextEntry('STRING');
	AddTextComponentString(message);
	SetNotificationMessage('CHAR_BANK_FLEECA', 'CHAR_BANK_FLEECA', true, 4, society, 'Finance Department');
	DrawNotification(false, true);

end