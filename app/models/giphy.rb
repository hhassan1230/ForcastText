class Giphy

	def initialize(summary)
		@summary = summary
		getting_url
	end

	def getting_url
		final_array = []
		pic_hash = {
			"snow" => ['http://i.giphy.com/dUmBMiHNkSiHu.gif', 'http://i.giphy.com/PkaZUCdVm2c5G.gif', 'http://i.giphy.com/idy0tSinxzsFa.gif', 'http://i.giphy.com/rRmBOCZDJJGU0.gif', 'http://i.giphy.com/12RAfAXFH8g5LG.gif'],
			"rain" => ['http://i.giphy.com/l41lJua4WRqpPJftm.gif', 'http://i.giphy.com/KSpla5V52Mzjq.gif', 'http://i.giphy.com/134SGEgHPxvbyw.gif', 'http://i.giphy.com/NXOr01Y2w8SK4.gif', 'http://i.giphy.com/5snnNL2QKy8HC.gif', 'http://i.giphy.com/3oEdvbelTmMXOQ9VDO.gif'],
			"fog" => ['http://i.giphy.com/ZCVJz7My94r3G.gif', 'http://i.giphy.com/xEjTM5COAKyNa.gif', 'http://i.giphy.com/aAvJE6v5JStKE.gif', 'http://i.giphy.com/3o7rbT3ECCXdEGE8fu.gif', 'http://i.giphy.com/T4vONWBqkfwfm.gif', 'http://i.giphy.com/ECcPsYSTDXB0Q.gif', 'http://i.giphy.com/oS4t8y8cP2FEc.gif', 'http://i.giphy.com/HQvDbdp5tjfPi.gif', 'http://i.giphy.com/KPtOFhewRGWl2.gif', 'http://i.giphy.com/McDhCoTyRyLiE.gif'],
			"sunny" => ['http://i.giphy.com/xTcnSNxfOFmfCCUTPG.gif', 'http://i.giphy.com/KAOfvL2yPoYIU.gif', 'http://i.giphy.com/ZQv3kT20UFcLS.gif', 'http://i.giphy.com/StVrh2hRQ8SY0.gif', 'http://i.giphy.com/RCk2tX2HLdzX2.gif', 'http://i.giphy.com/O22s721yY8Io0.gif', 'http://i.giphy.com/qWzB3ja63xk1a.gif', 'http://i.giphy.com/AEy0YJWLIjzSo.gif', 'http://i.giphy.com/o7R0zQ62m8Nk4.gif', 'http://i.giphy.com/KV1s4kSJHaY3m.gif', 'http://i.giphy.com/iWaaOpt0bQpjO.gif'],
			"cloudy" => ['http://i.giphy.com/rJmZsav7jU16U.gif', 'http://i.giphy.com/12AwtlTuPlF29y.gif', 'http://i.giphy.com/xg2u8zRjIowO4.gif', 'http://i.giphy.com/HgycnYQCMeJXO.gif', 'http://i.giphy.com/GZ3O20Gausy52.gif', 'http://i.giphy.com/138f4Lkn0krZwA.gif', 'http://i.giphy.com/k0O74KSYsiDG8.gif', 'http://i.giphy.com/G7XzhrnRdxNjW.gif', 'http://i.giphy.com/xT77YbFV06IhyseFkQ.gif', 'http://i.giphy.com/3TBcFZkYkV3z2.gif', 'http://i.giphy.com/vilFAy0C8uyf6.gif'],
			"clear-day" => ['http://i.giphy.com/H5TzQ2XXjzdKM.gif', 'http://i.giphy.com/CkKg32KdKyMve.gif', 'http://i.giphy.com/3oEdv0kwUDlRn2imSA.gif', 'http://i.giphy.com/8h7nBg0MOej4c.gif'],
			"clear-night" => ['http://i.giphy.com/H5TzQ2XXjzdKM.gif', 'http://i.giphy.com/YNk9HRcH9zJfi.gif', 'http://i.giphy.com/pkVHZKcnzzkmA.gif', 'http://i.giphy.com/pWhWtKdqwOAco.gif', 'http://i.giphy.com/iR6Ii4NBCEFeU.gif', 'http://i.giphy.com/ZGFnPrtQ6aPN6.gif', 'http://i.giphy.com/nlsrBc7vBBJ5e.gif'],
			"partly-cloudy-night" => ['http://i.giphy.com/26BkMY6mvAM1GRSOQ.gif', 'http://i.giphy.com/aPlzgxciAwVj2.gif', 'http://i.giphy.com/8oS6jyFkDBPOg.gif', 'http://i.giphy.com/YJk1BaqlosQzS.gif', 'http://i.giphy.com/ZGFnPrtQ6aPN6.gif', 'http://i.giphy.com/y7wbBsTXShhv2.gif'],
			"partly-cloudy-day" => ['http://i.giphy.com/WEJBCA62pMjuw.gif', 'http://i.giphy.com/IJxPL1zQIvJbq.gif', 'http://i.giphy.com/y3xjJsIg3Mq3K.gif', 'http://i.giphy.com/E1FWoqikKNxcY.gif', 'http://i.giphy.com/1uLQUtPLbJMQ0.gif', 'http://i.giphy.com/VMVpwj0jtCEYo.gif'],
			"hail" => ['http://i.giphy.com/ayRiwub4gd98k.gif', 'http://i.giphy.com/MlUj889pjdYFW.gif', 'http://i.giphy.com/xTiTnGmU99wLFvZBfy.gif', 'http://i.giphy.com/fDjHSaYl9xhII.gif', 'http://i.giphy.com/Ny2yWMlOiuzKw.gif'],
			"thunderstorm" => ['http://i.giphy.com/9QERi7tGWVztm.gif', 'http://i.giphy.com/l41lJua4WRqpPJftm.gif', 'http://i.giphy.com/RuG9idYrQIRSo.gif', 'http://i.giphy.com/JMqXTYyXytmSY.gif', 'http://i.giphy.com/CDA1wlmS8St68.gif', 'http://i.giphy.com/2pUAUd0cFntny.gif', 'http://i.giphy.com/cMZxYLjCYl6Cs.gif'],
			"wind" => ['http://i.giphy.com/HmTLatwLWpTQk.gif', 'http://i.giphy.com/tTQp2abUyLbqw.gif', 'http://i.giphy.com/az5FXj27l5lTi.gif', 'http://i.giphy.com/G5n8sqIOxBqow.gif', 'http://i.giphy.com/3o85xowcHuzX55d0yY.gif', 'http://i.giphy.com/A6jxzGD6qH8DC.gif', 'http://i.giphy.com/AyvCOUgf2QXuM.gif', 'http://i.giphy.com/mDq5rXNlFq5NK.gif', 'http://i.giphy.com/yz4ilxCq7uuSQ.gif', 'http://i.giphy.com/3o5RojbqYYFag.gif', 'http://i.giphy.com/yrB1KTY9nU1ZC.gif'],
			"sleet" => ['http://i.giphy.com/qsd7FpqokLtUQ.gif', 'http://i.giphy.com/8SdFac4Dkk3Oo.gif', 'http://i.giphy.com/8SdFac4Dkk3Oo.gif', 'http://i.giphy.com/OI8KXE95hzj4A.gif', 'http://i.giphy.com/jrAjSZWmHVcaY.gif', 'http://i.giphy.com/ZW2VPDRIp1iwM.gif', 'http://i.giphy.com/yBDP0Plx4F3dS.gif', 'http://i.giphy.com/JX4yOeoaPGoNy.gif', 'http://i.giphy.com/yBDP0Plx4F3dS.gif'],
			"tornado" => ['http://i.giphy.com/k2k9AhXvnl6UM.gif', 'http://i.giphy.com/LpLZwZlMivqE.gif', 'http://i.giphy.com/VdTErzuVHuxZm.gif', 'http://i.giphy.com/xRx7TSlg7F6ak.gif', 'http://i.giphy.com/Z6tfTTYxKFKhO.gif', 'http://i.giphy.com/t1Ng4uKm55rUs.gif', 'http://i.giphy.com/gvKwey8kfdTFK.gif', 'http://i.giphy.com/rJwfK5njt2FMs.gif', 'http://i.giphy.com/uZQ1c4CNlN7QA.gif']
		}
		url = pic_hash[@summary].sample
		url
	end

end