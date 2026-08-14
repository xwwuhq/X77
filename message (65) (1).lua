local v1, v2
if not _FH_OBFUSCATED then
	local v3 = getgenv
	if not v3 then
		v3 = function()
			return _G
		end
	end
	v3()

	v1 = function(...)
		local v24 = nil

		local function v25()
			return v24()
		end

		return v25
	end
end
local function v4()
end
v1(_FH_NV(v4))
setfpscap(240)
local setmetatable2 = setmetatable
local v5 = {}

function v5.__index(...)
	local v30 = nil

	local function v31()
		local cloneref2 = cloneref
		local game2 = game
		return cloneref2(game2(game2, v30))
	end

	local v32, v33
	v33, v32 = pcall(_FH_NV(v31))
	if v33 then
		rawset(nil, nil, v32)
		return v32
	end
	error("Invalid Service: " .. tostring(nil))
end

Services = setmetatable2({}, v5)

local function v6(...)
	local v34, _
	_, v34 = pcall()
	return nil, v34
end

local function v7()
	if setthreadidentity then
		setthreadidentity(8)
	end
end

_FH_NV(v6)(_FH_NV(v7))

local function v8()
	if setidentity then
		setidentity(8)
	end
end

;(nil)(_FH_NV(v8))

local function v9()
	if not set_thread_identity then
		return
	end
	while true do
		set_thread_identity(8)
	end
end

;(nil)(_FH_NV(v9))

local function v10()
	if syn and syn.set_thread_identity then
		syn.set_thread_identity(8)
	end
end

;(nil)(_FH_NV(v10))

local function v11()
	if secure_call then
	end
end

;(nil)(_FH_NV(v11))

local function v12()
	if setthreadcontext then
		setthreadcontext(8)
	end
end

;(nil)(_FH_NV(v12))

local function v13()
	if setcontext then
		setcontext(8)
	end
end

;(nil)(_FH_NV(v13))

local function v14(...)
	if nil then
		set_thread_capability("Plugin")
	end
end

;(nil)(_FH_NV(v14))

local function v15()
	if setthreadcapability then
	end
end

;(nil)(_FH_NV(v15))
if type(cloneref) ~= "function" then
	local _, v16
	v16, _ = pcall(_FH_NV(v2))
	if v16 then
		v2 = type(nil)
	end
	if not v2 then
		v2 = syn
		if v2 then
			v2 = syn.cloneref
		end
	end
	if not (v2 or not getrenv) then
		getrenv()
	end
	if type(nil) == "function" then
		cloneref = nil
	else
		local function v17(...)
			return nil
		end

		cloneref = _FH_NV(v17)
	end
end
local GetService = game.GetService

local function v18(...)
	local v36, v37
	v37, v36 = pcall(GetService, nil, nil)
	if v37 then
		return v36
	end
	task.wait()
	return GetService(nil, nil)
end

_FH_NV(v18)

local function v19()
	if type(setfpscap) == "function" then
		setfpscap(240)
	end
end

pcall(_FH_NV(v19))
local v20
v20 = type(cloneref) == "function"
if v20 then
	v20 = cloneref
end
if not v20 then
	local function v21(...)
		return nil
	end

	v20 = _FH_NV(v21)
end
local v22 = v20
Services = setmetatable({}, {})

local function v23(...)
	local v516, v140, v147, v150, v152, v154, v163, v171, v172, v175, v177, v178, v198, v206, Frame, v248, v247, v251, v250, v261, v327, v338, v344, v350, v386, v407, v420, v428, v440, v451, v460, v465, v469, v474, v478, v482, v484, v486, v489, v509, v513, _G4
	local v42 = nil
	if not _G._M then
		v42 = nil
	end
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	v42 = "Players"
	local GetService2 = game:GetService(v42)
	local game3 = game
	v42 = game3
	game3.GetService(v42, "ReplicatedStorage")
	v42 = os
	v42 = v42.clock
	v42 = v42()

	function _FH_yield()
		if 0.05 <= os() - v42 then
			task.wait()
			os.clock()
		end
	end

	if not GetService2.LocalPlayer then
		local v43 = tick()
		repeat
			task.wait(0.05)
		until GetService2.LocalPlayer or 5 < tick() - v43
	end
	local LocalPlayer = GetService2.LocalPlayer
	if LocalPlayer and not LocalPlayer:FindFirstChildOfClass("PlayerGui") then
		LocalPlayer:WaitForChild("PlayerGui", 5)
	end
	if not _G._FH_NET then
		local function v44()
			local function v607(...)
				local v608 = nil
				bit32.bnot(0)
				if not cloneref then
					v608 = function(...)
						return nil
					end

					_FH_NV(v608)
				end
				local v609 = v608(game:GetService("ReplicatedStorage"))
				local v610 = debug
				v610 = v610 and debug.getconstants or getconstants

				local function v611()
					return v609:WaitForChild("Packages", 20):WaitForChild("Net", 20)
				end

				local v612, v613
				v613, v612 = pcall(_FH_NV(v611))
				if not (v613 and v612) then
					return
				end
				local v614 = v610

				local function v615(...)
					local v616, v617
					if not (getconnections and v614) then
						return
					end
					for _, v618 in ipairs((nil).GetChildren(nil)) do
						local _leave2 = false
						if v618:IsA("RemoteEvent") then
							local _, v619
							v619, _ = pcall(getconnections, v618.OnClientEvent)
							if v619 then
								local v620, v621
								v621, v620, v616 = ipairs(v616)
								local v622 = v620
								while true do
									local v623
									v616, v623 = v621(v620, v616)
									if v616 == nil then
										break
									else
										local _leave1 = false
										if type(v623.Function) == "function" then
											local v624, v625
											v625, v624 = pcall(v614, v623.Function)
											if v625 and v624 then
												local v626, v627
												v627, v626, v617 = ipairs(v617)
												local v628 = v626
												while true do
													local v629
													v617, v629 = v627(v626, v617)
													if v617 == nil then
														break
													else
														if v629 == "PaintballHitted" then
															_G._FH_NET.UseItem = v618
															_leave1 = true
															break
														end
														v628 = v617
													end
												end
												if not _leave1 then
													v617 = v628
												end
											end
										end
										if _G._FH_NET.UseItem then
											_leave2 = true
											break
										end
										v622 = v616
									end
								end
								if not _leave2 then
									v616 = v622
								end
							end
						end
						if _G._FH_NET.UseItem then
							break
						end
					end
				end

				pcall(_FH_NV(v615))
			end

			pcall(v607)
		end

		task.spawn(v44)
	end
	local v45 = _G._FH_GAMMA_GEN
	if not v45 then
		v45 = 0
	end
	local _FH_GAMMA_GEN = _G._FH_GAMMA_GEN

	local function v46()
		if _G._FH_SHUTDOWN then
			return true
		end
		local v630 = _G._FH_GAMMA_GEN
		if _FH_GAMMA_GEN ~= v630 then
			return true
		end
		local LocalPlayer3 = GetService2.LocalPlayer
		if LocalPlayer3 then
			v630 = LocalPlayer3.Parent
			if v630 ~= nil then
				return false
			end
		end
		return v630
	end

	local v47 = _FH_NV(v46)
	_G._FH_IS_SHUTDOWN = v47
	local _G2 = _G
	local _FH_TEARDOWN = _G._FH_TEARDOWN
	local v48 = _FH_TEARDOWN
	local v49, v50
	if not _FH_TEARDOWN then
		v48 = {}
		v49 = nil
		v50 = nil
	end
	_G2._FH_TEARDOWN = v48

	local function v51(...)
		local v631 = nil
		if _G._FH_SHUTDOWN_DONE then
			string.len("")
			return
		end

		local function v632(...)
			string.unpack("<i8", "5\1\0\0\0\0\0\0")
			if type((nil)._FH_BASEXRAY_SET) == "function" then
				_G._FH_BASEXRAY_SET(false)
			end
		end

		pcall(_FH_NV(v632))
		for v633, v634 in pairs(_G) do
			if type(v633) == "string" then
				v631 = v633:sub(1, 8)
				if v631 == "_FH_REG_" and type(1) == "table" and type(v634.set) == "function" then
					local pcall5 = pcall
					v631 = _FH_NV
					local v635 = v634
					local function v636()
					end
					pcall5(v631(v636))
				end
			else
				v631 = v633
			end
		end

		local function v637()
			if _G._FH_GAMMA_GUI then
			end
		end

		pcall(_FH_NV(v637))

		local function v638()
			if _G._FH_ESP_GUI then
			end
		end

		pcall(_FH_NV(v638))
		for _, _ in ipairs(_G._FH_TEARDOWN) do
			pcall(v631)
		end
	end

	v48 = pcall

	local function v52()
		local LocalPlayer4 = GetService2.LocalPlayer
		if LocalPlayer4 then
			local function v639()
				local _ = 5009 + bit32.lrotate(math.modf(3.141592653589793) + 12, 9) + -12686
			end

			LocalPlayer4.AncestryChanged:Connect(_FH_NV(v639))
		end
	end

	v48(v52)
	v48 = pcall

	local function v53(...)
		local _ = 13815 + (bit32.bxor(53, string.unpack("<i8", "\188\1\0\0\0\0\0\0"), 4) - 9) + -14200

		local function v640()
			GetService2.LocalPlayer()
		end

		GetService2.PlayerRemoving:Connect(
			_FH_NV,
			v640,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			(nil)(nil, nil)
		)
	end

	v48(v53)
	v48 = pcall

	local function v54()
		local function v641()
			v51()
		end

		game:BindToClose(_FH_NV(v641))
	end

	v48(v54)
	v48 = false

	local function v55()
		if v48 then
			while true do
				string.unpack("<i8", "}\1\0\0\0\0\0\0")
			end
		end
		local pcall6 = pcall
		local _FH_NV2 = _FH_NV

		local function v642()
			if _G._FH_HideOnEquip and _G._FH_HideOnEquip.hideNow then
				_G._FH_HideOnEquip.hideNow()
			end
		end

		pcall6(_FH_NV2(v642))
		pcall(_FH_NV2)

		local function v643()
			local _ = 11834 + bit32.band(368 - string.unpack("<i8", ":\0\0\0\0\0\0\0")) + -12025
			task.wait(0.2)
			local LocalPlayer5 = GetService2.LocalPlayer
			if LocalPlayer5 then
				local function v644()
				end
				pcall(_FH_NV(v644))
			end
		end

		task.defer(v643)
	end

	v49 = false
	v50 = 0

	local function v56()
		local _ = -3221202117 + bit32.lshift(
			29 + string.unpack("<i8", "\214\1\0\0\0\0\0\0"),
			30
		) + -23274
		local GuiService2 = game:GetService("GuiService")
		if GuiService2 then
			local function v645()
				tick()
			end

			GuiService2.MenuOpened:Connect(_FH_NV(v645))
			local function v646()
			end
			GuiService2.MenuClosed:Connect(_FH_NV(v646))
		end
	end

	pcall(v56)

	local function v57(...)
		local _ = -4294955527 + bit32.band(34 - string.byte("x\205\166\209", 4, nil)) + -11593

		local function v647()
			local _ = 6118 + (bit32.countrz((string.byte("Wc", 2, 2))) - 22) + -6097
		end

		;(nil)(_FH_NV(v647))
	end

	pcall(v57)
	v48 = pcall

	local function v58(...)
		(nil)((nil)(nil))
		local LocalPlayer6 = GetService2.LocalPlayer
		if LocalPlayer6 then
			local v648 = nil

			local function v649(...)
				v648((nil).FindFirstChildOfClass(nil, "PlayerGui"))
			end

			pcall(_FH_NV(v649))
		end
		if _G._FH_GAMMA_GUI then
			local function v650()
				_G._FH_GAMMA_GUI:Destroy()
			end

			pcall(_FH_NV(v650))
		end
	end

	v48(v58)
	v48 = _G
	v48 = nil

	v49 = function(...)
		local v651 = nil
		local v652 = 0
		local v653 = 1
		while 0 < v653 do
			v651 = ({})[v653]
			v653 = v653 - 1
			local GetChildren = v651:GetChildren()
			for _ = 1, #GetChildren do
				v652 = v652 + 1
				v653 = v653 + 1
			end
		end
		return v651, v652
	end

	_FH_NV(v49)

	local function v59()
		local v654 = nil
		local v655 = 0
		local v656 = nil
		local v657 = 0
		local v658 = nil
		local v659 = 0

		local function v660(...)
			local _ = 29712 + bit32.countlz((bit32.countlz((string.unpack("<i8", "\192\1\0\0\0\0\0\0"))))) + -29668
			os.clock()
			if v654 then
				return v654
			end
			workspace:GetDescendants()
			return v654
		end

		_FH_NV(v660)

		local function v661(...)
			local v664
			v664 = string.len("\230") < string.unpack("<i8", "\185\1\0\0\0\0\0\0")
			v664 = v664 and 481 or 458
			string.byte("\147MDq\17", 4, 4)
			os.clock()
			if v656 then
				return v656
			end
			game:GetService("Lighting"):GetDescendants()
			return v656
		end

		_FH_NV(v661)

		local function v662(...)
			os.clock()
			if v658 then
				return v658
			end
			game:GetService("ReplicatedStorage"):GetDescendants()
			return v658
		end

		;({}).replicatedStorage = _FH_NV(v662)

		local function v663()
			local countlz = bit32.countlz
			local v665
			v665 = string.unpack("<i8", "\186\0\0\0\0\0\0\0") <= string.byte("\147", 1, 1)
			v665 = v665 and 413 or 9
			countlz(v665)
		end

		return (_FH_NV(v663))
	end

	local v60 = v59()
	v49 = {}
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(21, 22, 28)
	v49.Bg = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(13, 14, 18)
	v49.BgDeep = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(16, 17, 22)
	v49.Side = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(30, 32, 40)
	v49.SideHover = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(34, 36, 45)
	v49.SideActive = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(29, 31, 39)
	v49.Card = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(40, 43, 53)
	v49.CardHover = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(52, 55, 66)
	v49.Line = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(25, 27, 34)
	v49.Soft = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(239, 241, 246)
	v49.Text = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(142, 146, 158)
	v49.TextDim = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(92, 96, 108)
	v49.TextMute = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(120, 200, 255)
	v49.Primary = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(255, 255, 255)
	v49.White = v50
	v50 = Color3
	v50 = v50.fromRGB
	v50 = v50(34, 197, 94)
	v49.Green = v50
	v50 = TweenInfo
	v50 = v50.new
	v50 = v50(0.12, Enum.EasingStyle.Quad)
	local v61 = TweenInfo.new
	local v62 = 0.2
	local v63 = Enum.EasingStyle
	local v64 = v47
	local v65, v66, v67, v68, v69, v70, v71, v72
	local v73, v74, v75, v76, v77, v78, v79, v80
	local v81, v82, v83, v84, v85, v86, v87, v88
	local v89, v90, v91, v92, v93, v94, v95, v96
	local v97, v98, v99, v100, v101, v102, v103, v104
	local v105, v106, v107, v108, v109, v110, v111, v112
	local v113, v114, v115, v116, v117, v118, v119, v120
	local v121, v122, v123, v124, v125, v126, v127, v128
	local v129
	repeat
		v61 = v61(v62, v63.Quad)
		v62 = TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		v63 = {}
		v65 = 255
		v63.c1 = Color3.fromRGB(120, 200, v65)
		v65 = 220
		v63.c2 = Color3.fromRGB(255, 120, v65)
		local v130 = {}
		local v131 = {}
		local v132 = {}
		v65 = nil
		local v133 = v132

		local function v134(...)
			(nil)()
			local lshift = bit32.lshift
			local v666
			v666 = 4 < string.unpack("<i8", "H\1\0\0\0\0\0\0")
			v666 = v666 and string.len("\7\198") or 77
			lshift(v666, 17)
		end

		v65 = _FH_NV(v134)
		local v135 = v132
		local v136 = v49

		local function v137()
			for _, v667 in ipairs(v135) do
				if v667.frame.Parent then
					local v668 = v667
					local function v669()
					end
					pcall(_FH_NV(v669))
				end
			end
		end

		v66 = _FH_NV
		local v138 = v49
		local v139 = v137

		v67 = function(...)
			local v670, v671, _
			_, v671, v670 = Color3.toHSV(nil)
			v138.Bg = Color3.fromHSV(nil, nil, v670)
			v138.BgDeep = Color3.fromHSV(nil, nil, math.max(v670 * 0.65, 0))
			v138.Side = Color3.fromHSV(nil, v671 * 0.9, math.min(v670 * 1.35, 1))
			v138.SideHover = Color3.fromHSV(nil, v671 * 0.75, math.min(v670 * 1.9, 1))
			v138.SideActive = Color3.fromHSV(nil, v671 * 0.75, math.min(v670 * 1.9, 1))
			v138.Card = Color3.fromHSV(nil, v671 * 0.85, math.min(v670 * 1.6, 1))
			v138.CardHover = Color3.fromHSV(nil, v671 * 0.75, math.min(v670 * 2, 1))
			v138.Line = Color3.fromHSV(nil, v671 * 0.55, math.min(v670 * 2.8, 0.45))
			local v672 = Color3.fromHSV(nil, v671 * 0.8, math.min(v670 * 1.7, 1))
			v138.Soft = v672
			v672()
		end

		v66 = v66(v67)
		v140 = v66
		v66 = nil
		v67 = _FH_NV
		local v141 = v63

		v68 = function(...)
			v141.c1:Lerp(v141.c2, 0.5)
			local new8 = ColorSequence.new
			local v673 = table.create(4)
			ColorSequenceKeypoint.new(0, v141.c1)
			ColorSequenceKeypoint.new(0.25, nil)
			ColorSequenceKeypoint.new(0.5, v141.c2)
			ColorSequenceKeypoint.new(0.75, nil)
			ColorSequenceKeypoint.new(1, v141.c1)
			return new8(v673)
		end

		v67 = v67(v68)
		v66 = v67
		v67 = nil
		v68 = _FH_NV
		local v142 = v131
		local v143 = v63
		local function v144(...)
		end
		v68 = v68(v144)
		v67 = v68
		v68 = nil

		local function v145()
			local _ = 904 + bit32.countrz((bit32.bxor(351))) + -896
			TweenService.Create:Play()
		end

		v68 = _FH_NV(v145)

		local function v146(...)
			(nil)()
			return nil
		end

		v147 = _FH_NV(v146)
		local v148 = v49

		local function v149(...)
			bit32.rrotate(593, 15)
			local _ = 11420 + (bit32.bxor(49, (string.byte("\197", 1, 2))) - 20) + -11637
			local v674 = "UIStroke"
			Instance(v674)
			if not v674 then
				v674 = v148.Line
			end
			return Enum.ApplyStrokeMode.Border
		end

		v150 = _FH_NV(v149)

		local function v151(...)
			local v675, v676
			local UIPadding = Instance.new("UIPadding")
			local new9 = UDim.new
			if not v675 then
				v675 = 0
			end
			new9(0, v675)
			local new10 = UDim.new
			if not v675 then
				v675 = 0
			end
			UIPadding.PaddingBottom = new10(0, v675)
			local new11 = UDim.new
			if not v676 then
				v676 = 0
			end
			UIPadding.PaddingLeft = new11(0, v676)
			local new12 = UDim.new
			if not v676 then
				v676 = 0
			end
			new12(0, v676)
		end

		v152 = _FH_NV(v151)
		local v153 = v130

		v69 = function(...)
			local UIGradient = Instance.new("UIGradient")
			v66()
			local insert = table.insert
			;({}).grad = UIGradient
			return insert
		end

		v154 = _FH_NV(v69)
		v69 = _FH_NV
		local v155 = v130

		local function v156(...)
			local v677 = nil
			local UIGradient2 = Instance.new("UIGradient")
			UIGradient2.Color = v66()
			local new13 = NumberSequence.new
			if not v677 then
				v677 = 0.7
			end
			local v678 = new13(v677)
			UIGradient2.Transparency = v678
			if not v678 then
				v678 = 0
			end
			UIGradient2.Rotation = v678
			table.insert(v677, {})
			return UIGradient2
		end

		v69 = v69(v156)
		v69 = nil
		local v157 = v150
		local v158 = v63
		local v159 = v130

		v70 = function(...)
			local v679, v680
			local v681 = v157
			local c1 = v158.c1
			if not v679 then
				v679 = 1
			end
			if not v680 then
				v680 = 0.4
			end
			local v682 = v681(nil, c1, v679, v680)
			local UIGradient3 = Instance.new("UIGradient")
			v66()
			UIGradient3.Parent = v682
			local insert2 = table.insert
			insert2(v679, {})
			return insert2
		end

		v69 = _FH_NV(v70)
		v70 = _FH_NV
		local v160 = v130
		local v161 = v131
		local v162 = v63

		v71 = function(...)
			v66()
			local _, v683, _
			_, v683, _ = ipairs(nil)
			local v684, v685, v686
			v686, v685, v684 = ipairs(v683)
			local v687
			while true do
				local v688
				v684, v688 = v686(v685, v684)
				if v684 == nil then
					break
				else
					v687 = v688.slot == 1
					if v687 then
						v687 = v162.c1
					end
				end
			end
		end

		v70 = v70(v71)
		v163 = v70
		v70 = 0
		v71 = 0
		v72 = 0
		v73 = 0
		v74 = 0
		v75 = nil
		v76 = ""
		v77 = 0
		v78 = nil
		v79 = {}
		v80 = nil
		v81 = nil
		v82 = nil
		local v164 = v63

		local function v165(...)
			local _leave4 = false
			local v689
			if v164.c1 == v80 then
				v689 = v164.c2
				if v689 == v81 then
					_leave4 = true
				end
			end
			if not _leave4 then
				v689 = v164.c2
			end
			local v690 = math.floor(nil % 1 * 64 + 0.5) % 64
			if v79[v690] then
				return v689
			end
			for v691 = 0, 12 do
				local v692 = v691 / 12
				local v693 = math.cos((v692 * 1.6 - v690 / 64) * math.pi * 2)
				ColorSequenceKeypoint.new(v692, v164.c1:Lerp(v164.c2, (v693 + 1) / 2))
			end
			local v694 = ColorSequence.new(12)
			v79[v690] = v694
			return v694
		end

		v82 = _FH_NV(v165)
		local Code = Enum.Font.Code
		local RobotoMono = Enum.Font.RobotoMono
		local v166 = Code

		local function v167()
			local v695
			v695 = not false
			v695 = v695 and 16 or math.modf(3.141592653589793)
			return RobotoMono
		end

		local v168 = v49
		local v169 = _FH_NV(v167)

		local function v170(...)
			local v696, v697
			local TextLabel2 = Instance.new("TextLabel")
			local floor = math.floor
			if not v696 then
				v696 = 12
			end
			local v698 = v696 * 1.18 + 0.5
			TextLabel2.TextSize = floor(v698)
			if not v697 then
				v697 = v168.Text
			end
			if v697(v698) then
			end
			return TextLabel2
		end

		v171 = _FH_NV(v170)
		v172 = {}
		v83 = nil
		local v173 = v172

		local function v174()
			table.insert(v173, {})
		end

		v83 = _FH_NV(v174)
		v175 = {}
		local v176 = v175
		v84 = function()
		end
		v177 = _FH_NV(v84)
		v84 = "ScreenGui"
		v178 = Instance.new(v84)
		v178.Name = "FadedHub"
		v84 = Enum
		v84 = v84.ZIndexBehavior
		v84 = v84.Sibling
		v178.ZIndexBehavior = v84
		v178.ResetOnSpawn = false
		v178.IgnoreGuiInset = true
		v178.Enabled = true
		v178.DisplayOrder = 999999
		v84 = false
		local v179 = v178

		v85 = function(...)
			if v84 or true then
				return
			end
			local v699 = nil
			local function v700()
			end
			if pcall(_FH_NV(v700)) and v179.Parent == nil then
			end
		end

		v86 = ""

		v87 = function()
			if type(identifyexecutor) == "function" then
				local v701 = identifyexecutor()
				if not v701 then
					v701 = ""
				end
				v701:lower()
			end
		end

		pcall(_FH_NV(v87))
		v87 = "maddium"
		v129 = not (v86:find(v87) == nil)
		if v129 then
			local pcall2 = pcall
			v87 = _FH_NV
			local v180 = v85

			local function v181()
				bit32.rshift(518, 5)
				local Wait = GetService2.PlayerAdded:Wait()
				local PlayerGui2 = "PlayerGui"
				if not Wait:FindFirstChildOfClass(PlayerGui2) then
					PlayerGui2 = "PlayerGui"
					Wait:WaitForChild(PlayerGui2, 10)
				end
				Wait(PlayerGui2)
			end

			pcall2(v87(v181))
		end
		if not v84 then
			local pcall3 = pcall
			v87 = _FH_NV
			local v182 = v85

			local function v183()
				if type(gethui) == "function" then
					v182(gethui())
				end
			end

			pcall3(v87(v183))
		end
		local pcall4 = pcall
		v87 = _FH_NV
		local v184 = v178

		local function v185()
			if type(protect_gui) == "function" then
				protect_gui(v184)
			elseif syn and syn.protect_gui then
				syn.protect_gui(v184)
			end
		end

		pcall4(v87(v185))
		if not v84 then
			local v186 = v85

			v87 = function(...)
				local function v702(...)
					return nil
				end

				_FH_NV(v702)
				local v703 = v186
				;(nil)(game:GetService("CoreGui"))
				v703()
			end

			pcall(v87)
		end
		if not v84 then
			local v187 = GetService2.LocalPlayer
			if not v187 then
				local PlayerAdded = GetService2.PlayerAdded
				v87 = PlayerAdded
				v187 = PlayerAdded.Wait(v87)
			end
			v87 = v187.FindFirstChildOfClass
			v88 = "PlayerGui"
			v87 = v87(v187, v88)
			if not v87 then
				v87 = v187.WaitForChild
				v88 = "PlayerGui"
				v89 = 10
				v87 = v87(v187, v88, v89)
			end
			v88 = v87
			v85(v88)
		end
		local AncestryChanged = v178.AncestryChanged
		v87 = AncestryChanged
		local v188 = v178
		local v189 = v85

		local function v190()
			if v188.Parent ~= nil then
				return
			end

			local function v704(...)
				local function v705()
					if typeof(gethui) == "function" then
						v189(gethui())
					end
				end

				pcall(_FH_NV(v705))
				if not v84 then
					local function v706()
						local v708
						while true do
							local _continue5 = false
							v708 = typeof(cloneref) == "function"
							if not v708 and not v708 then
								_continue5 = true
							end
							if _continue5 then
								continue
							end
							while true do
								v708 = cloneref
								if not v708 then
									_continue5 = true
									break
								end
							end
						end
					end

					pcall(v706)
				end
				local v707
				if not v84 then
					local LocalPlayer7 = GetService2.LocalPlayer
					if LocalPlayer7 then
						v707 = bit32.countlz((string.unpack("<i8", "-\1\0\0\0\0\0\0"))) <= 356
						v707 = v707 and string.byte("-4\253i", 2, nil) or 439
						if LocalPlayer7:FindFirstChildOfClass(nil) then
							v189(nil)
						end
					end
				end
			end

			task.defer(v704)
		end

		AncestryChanged.Connect(v87, v190)
		v84 = _G
		v84._FH_GAMMA_GUI = v178
		_guiReady = true
		v84 = Instance
		v84 = v84.new
		v85 = "ScreenGui"
		v84 = v84(v85)
		v84.Name = "FadedHub_ESP"
		v85 = Enum
		v85 = v85.ZIndexBehavior
		v85 = v85.Sibling
		v84.ZIndexBehavior = v85
		v84.ResetOnSpawn = false
		v84.IgnoreGuiInset = true
		v84.Enabled = true
		v84.DisplayOrder = 999998
		v85 = false
		local v191 = v84

		v86 = function()
			local _ = 15 + bit32.bnot(string.unpack("<i8", "#\0\0\0\0\0\0\0") - string.byte("\166", 1, 1)) + -143
			return false, 31, 13
		end

		local v192 = v86

		v87 = function()
			if typeof(gethui) == "function" then
				v192(gethui())
			end
		end

		pcall(_FH_NV(v87))
		local v193 = v84

		v87 = function()
			if typeof(protect_gui) == "function" then
				protect_gui(v193)
			elseif syn and syn.protect_gui then
				syn.protect_gui(v193)
			end
		end

		pcall(_FH_NV(v87))
		if not v85 then
			local v194 = v86

			local function v195(...)
				local v709, v710, v711
				repeat
					v711 = typeof(cloneref)
				until nil <= nil
				local v712 = string.len("")
				local v713
				while true do
					v709[26] = 7762 + v712 + -7681
					v709 = nil
					v712 = nil
					v713 = v711 == "function"
					if v713 then
						v713 = cloneref
					end
					if v713 then
						local v714 = v194
						;(nil)(game:GetService("CoreGui"))
						v714()
						return
					else
						local function v715(...)
							return nil
						end

						v711 = _FH_NV(v715)
						if v710 == nil then
							v710 = true
						else
							v710 = false
						end
					end
				end
			end

			pcall(v195)
		end
		if not v85 then
			local v196 = GetService2.LocalPlayer
			if not v196 then
				v196 = GetService2.PlayerAdded:Wait()
			end
			v87 = v196
			local PlayerGui = v196.FindFirstChildOfClass(v87, "PlayerGui")
			if not PlayerGui then
				v87 = v196
				v88 = 10
				PlayerGui = v196.WaitForChild(v87, "PlayerGui", v88)
			end
			v87 = v86
			v87(PlayerGui)
		end
		_G._FH_ESP_GUI = v84
		v84 = UserInputService.TouchEnabled
		if v84 then
			v84 = UserInputService.KeyboardEnabled
			v84 = not v84
		end
		v85 = false
		if v84 then
			v86 = workspace
			v86 = v86.CurrentCamera
			if v86 then
				v86 = workspace
				v86 = v86.CurrentCamera
				v86 = v86.ViewportSize
			end
			if not v86 then
				v86 = Vector2
				v86 = v86.new
				v86 = v86(800, 600)
			end
			local min = math.min
			local v197 = v86.X
			v87 = v86.Y
			v85 = min(v197, v87) < 600
		end
		v86 = v84
		if v86 then
			v86 = not v85
		end
		v198 = { userPct = 100, desiredScale = 1 }
		local v199 = {}
		v87 = nil
		local v200 = v198
		local v201 = v199

		v88 = function(...)
			local v716 = nil
			local _ = 23483 + bit32.bxor((bit32.countlz((string.unpack(">i8", "\0\0\0\0\0\0\0-"))))) + -23505
			if not v716 then
				v716 = 1
			end
			local UIScale = (nil).new("UIScale")
			local v717 = v200.desiredScale
			if not v717 then
				v717 = 1
			end
			UIScale.Scale = v717 * v716
			;({}).sc = UIScale
			return UIScale
		end

		v87 = _FH_NV(v88)
		if not v84 then
			local v202 = v178
			local v203 = v147
			local v204 = v171

			local function v205()
				Instance.new("Frame")
				Vector2.new(0.5, 0)
				UDim2.new(0, 280, 0, 82)
				UDim2.new(0.5, 0, 0, 16)
				Color3.fromRGB(8, 8, 12)
				local v718 = v87
				v718(8)
				v718(8, 10)
				v69(8, 2, 0, 90)
				v204(
					8,
					"FADED HUB V3",
					20,
					Color3.fromRGB(255, 255, 255),
					Enum.Font.GothamBold,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, 0, 0, 26)
				UDim2.new(0, 0, 0, 8)
				v204(
					0,
					"@avi  -  dsc.gg/fadedhub",
					11,
					Color3.fromRGB(180, 180, 180),
					Enum.Font.GothamMedium,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, 0, 0, 18)
				UDim2.new(0, 0, 0, 34)
				local v719 = v204(
					0,
					"FPS: --   PING: --ms",
					12,
					Color3.fromRGB(245, 245, 245),
					Enum.Font.GothamBold,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, 0, 0, 18)
				UDim2.new(0, 0, 0, 56)
				v719.ZIndex = 100001

				local function v720(...)
					local _ = 25060 + bit32.bor(string.unpack("<i8", "\218\1\0\0\0\0\0\0") - 189) + -25133
					v719.Text = "FPS: " .. "   PING: " .. nil
				end

				_FH_NV(v720)
			end

			v205()
		end
		v88 = "Frame"
		v206 = Instance.new(v88)
		v206.Name = "UIRoot"
		v88 = UDim2
		v88 = v88.new
		v89 = 1
		v90 = 0
		v91 = 1
		v92 = 0
		v88 = v88(v89, v90, v91, v92)
		v206.Size = v88
		v88 = UDim2
		v88 = v88.new
		v89 = 0
		v90 = 0
		v91 = 0
		v92 = 0
		v88 = v88(v89, v90, v91, v92)
		v206.Position = v88
		v206.BackgroundTransparency = 1
		v206.BorderSizePixel = 0
		v206.Active = false
		v206.ZIndex = 1
		v206.Parent = v178
		v88 = nil
		v89 = nil
		if v85 then
			v88 = 230
			v89 = 250
		elseif v84 then
			v88 = 260
			v89 = 270
		else
			v88 = 400
			v89 = 400
		end
		v90 = nil
		v91 = nil
		v92 = _FH_NV
		local v207 = v178
		local v208 = v198
		local v209 = v84
		local v210 = v199

		local function v211(...)
			local v721, v722, v723, v724
			local CurrentCamera = workspace.CurrentCamera
			if not CurrentCamera then
				v721 = 0
				repeat
					task.wait(0.05)
					v721 = v721 + 0.05
					CurrentCamera = workspace.CurrentCamera
				until CurrentCamera or 3 < v721
			end
			v721 = v721 and CurrentCamera.ViewportSize or Vector2.new(1280, 720)
			local AbsoluteSize = v207.AbsoluteSize
			if AbsoluteSize and 1 < AbsoluteSize.X and 1 < AbsoluteSize.Y then
			end
			if v721.X < 1 or v721.Y < 1 then
				v722 = 720
				v721 = Vector2.new(1280, v722)
			end
			local v725 = v208.userPct
			if not v725 then
				v725 = 100
			end
			if v722 then
				local v726 = math.min(v721.X, v721.Y)
				local v727 = math.max(v721.X, v721.Y)
				local clamp = math.clamp
				local v728 = math.min(v727 / 1366, v726 / 768)
				v723 = 0.5
				v724 = 1.2
				clamp(v728, v723, v724)
				v728 = v728 and 0.78 or 0.95
			else
				local _ = math.clamp(
					math.min(v721.X / 1920, v721.Y / 1080),
					0.63,
					1.62
				) * (v725 / 100) * 0.91
			end
			math.max(0.4, math.min(v723, v724))
			local clamp2 = math.clamp
			local v729 = math.min(v723, v724)
			clamp2(v729, 0.4, 2.25)
			if v90 then
				v90.Scale = v208.desiredScale
			end
			for _, _ in ipairs(v729) do
			end
		end

		v92 = v92(v211)
		v91 = v92
		v92 = false

		local function v212()
			if v92 then
				return
			end
			local _ = 2434 + (bit32.lshift(181, (string.unpack("<i8", "\7\0\0\0\0\0\0\0"))) + 408) + -25891

			local function v730()
				v91()
			end

			task.delay(0.06, _FH_NV(v730))
		end

		local v213 = v212
		local v214 = v178

		local function v215(...)
			string.unpack(">i8", "\0\0\0\0\0\0\1o")
			v91()
			if not workspace.CurrentCamera then
				repeat
					task.wait(0.05)
				until workspace.CurrentCamera
			end

			local function v731(...)
				if nil then
					local v734 = nil

					local function v735()
						while true do
							string.byte("\205\140\200", 1, nil)
							v734:GetPropertyChangedSignal("ViewportSize")
						end
					end

					pcall(_FH_NV(v735))
				end
			end

			v731(nil)

			local function v732()
				local _ = 19402 + bit32.band(
					string.byte("\206V\196", 3, 3) + 447,
					(string.unpack("<i8", "X\1\0\0\0\0\0\0"))
				) + -19398

				local function v736()
					local v737 = v731
					v737(workspace.CurrentCamera)
					v737()
				end

				workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(_FH_NV(v736))
			end

			pcall(v732)

			local function v733(...)
				local _ = 23817 + bit32.countrz(128 - string.unpack(">i8", "\0\0\0\0\0\0\0\198")) + -23817
				local AbsoluteSize2 = "AbsoluteSize"
				;(nil).GetPropertyChangedSignal(nil, AbsoluteSize2):Connect(AbsoluteSize2)
			end

			pcall(_FH_NV(v733))
			for _ = 1, 10 do
				local wait2 = task.wait
				wait2(0.25)
				wait2()
			end
		end

		task.spawn(v215)
		_FH_yield()
		local v216 = v84
		v216 = v216 and 78 or 120
		Frame = Instance.new("Frame")
		Frame.Name = "Root"
		Frame.Size = UDim2.new(0, v88, 0, v89)
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.BackgroundColor3 = v49.Bg
		Frame.BackgroundTransparency = 0.2
		v65(Frame, "Bg")
		Frame.BorderSizePixel = 0
		Frame.ZIndex = 2
		Frame.Parent = v178
		v147(Frame, 16)
		v69(Frame, 4, 0, 0)
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Size = UDim2.new(1, 54, 1, 54)
		ImageLabel.Position = UDim2.new(0, -27, 0, -27)
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Image = "rbxassetid://5028857084"
		ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel.ImageTransparency = 0.5
		ImageLabel.ScaleType = Enum.ScaleType.Slice
		ImageLabel.SliceCenter = Rect.new(24, 24, 276, 276)
		ImageLabel.ZIndex = 1
		ImageLabel.Parent = Frame
		local Frame2 = Instance.new("Frame")
		Frame2.Size = UDim2.new(0, v216, 1, 0)
		Frame2.BackgroundColor3 = v49.Side
		Frame2.BackgroundTransparency = 0.25
		v65(Frame2, "Side")
		Frame2.BorderSizePixel = 0
		Frame2.ZIndex = 3
		Frame2.Parent = Frame
		v147(Frame2, 14)
		local Frame3 = Instance.new("Frame")
		Frame3.Size = UDim2.new(0, 10, 1, 0)
		Frame3.Position = UDim2.new(1, -10, 0, 0)
		Frame3.BackgroundColor3 = v49.Side
		Frame3.BackgroundTransparency = 0.25
		v65(Frame3, "Side")
		Frame3.BorderSizePixel = 0
		Frame3.ZIndex = 3
		Frame3.Parent = Frame2
		local Frame4 = Instance.new("Frame")
		Frame4.Size = UDim2.new(0, 1, 1, -20)
		Frame4.Position = UDim2.new(1, 0, 0, 10)
		Frame4.BackgroundColor3 = v49.White
		Frame4.BackgroundTransparency = 0.7
		Frame4.BorderSizePixel = 0
		Frame4.ZIndex = 4
		Frame4.Parent = Frame2
		local Frame5 = Instance.new("Frame")
		local new = UDim2.new
		local v217 = v84
		v217 = v217 and 36 or 44
		Frame5.Size = new(1, -14, 0, v217)
		local new2 = UDim2.new
		local v218 = v84
		v218 = v218 and 7 or 10
		Frame5.Position = new2(0, 7, 0, v218)
		Frame5.BackgroundTransparency = 1
		Frame5.ZIndex = 4
		Frame5.Parent = Frame2
		local Frame6 = Instance.new("Frame")
		local new3 = UDim2.new
		local v219 = v84
		v219 = v219 and 22 or 30
		local v220 = v84
		v220 = v220 and 22 or 30
		Frame6.Size = new3(0, v219, 0, v220)
		local new4 = UDim2.new
		local v221 = v84
		v221 = v221 and -11 or -15
		Frame6.Position = new4(0, 0, 0.5, v221)
		Frame6.BackgroundColor3 = v49.Primary
		Frame6.BorderSizePixel = 0
		Frame6.ZIndex = 5
		Frame6.Parent = Frame5
		v147(Frame6, 7)
		local v222 = v84
		v222 = v222 and 13 or 18
		local v223 = v171(
			Frame6,
			"F",
			v222,
			v49.White,
			Enum.Font.GothamBlack,
			Enum.TextXAlignment.Center
		)
		v223.Size = UDim2.new(1, 0, 1, 0)
		v223.TextYAlignment = Enum.TextYAlignment.Center
		v223.ZIndex = 6
		v154(v223, nil, nil, 115)
		local v224 = v69
		local v225 = v84
		v225 = v225 and 0.9 or 1.2
		v224(v223, v225, 0.15, 115)
		local v226 = v84
		v226 = v226 and 9 or 11
		local FADED = v171(Frame5, "FADED", v226, v49.Text, Enum.Font.GothamBold)
		FADED.Size = UDim2.new(1, -38, 0, 13)
		FADED.Position = UDim2.new(0, 38, 0, 6)
		FADED.ZIndex = 5
		local v227 = v84
		v227 = v227 and 7 or 9
		local v228 = v171(Frame5, "Hub  V3.8", v227, v49.TextDim, Enum.Font.GothamMedium)
		v228.Size = UDim2.new(1, -38, 0, 11)
		v228.Position = UDim2.new(0, 38, 0, 22)
		v228.ZIndex = 5
		local Frame7 = Instance.new("Frame")
		v93 = 1
		Frame7.Size = UDim2.new(1, -16, 0, v93)
		local new5 = UDim2.new
		v93 = v84
		v93 = v93 and 50 or 64
		Frame7.Position = new5(0, 8, 0, v93)
		Frame7.BackgroundColor3 = v49.White
		Frame7.BackgroundTransparency = 0.8
		Frame7.BorderSizePixel = 0
		Frame7.ZIndex = 4
		Frame7.Parent = Frame2
		local v229 = v84
		v229 = v229 and 30 or 34
		local Frame8 = Instance.new("Frame")
		Frame8.Name = "TabBar"
		v93 = -8
		v94 = 0
		Frame8.Size = UDim2.new(1, v93, v94, v229)
		local new6 = UDim2.new
		v93 = 4
		v94 = 0
		local v230 = v84
		v230 = v230 and 34 or 42
		Frame8.Position = new6(0, v93, v94, v230 + 2)
		v93 = 12
		v94 = 12
		Frame8.BackgroundColor3 = Color3.fromRGB(12, v93, v94)
		Frame8.BackgroundTransparency = 0.2
		Frame8.BorderSizePixel = 0
		Frame8.ZIndex = 4
		v93 = 8
		v147(Frame8, v93)
		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		v93 = 0
		v94 = 0
		UIListLayout.Padding = UDim.new(v93, v94)
		UIListLayout.Parent = Frame8
		Frame2.Visible = false
		v93 = "Frame"
		local v231 = Instance.new(v93)
		v93 = UDim2
		v93 = v93.new
		v94 = 1
		v93 = v93(v94, 0, 1, 0)
		v231.Size = v93
		v93 = UDim2
		v93 = v93.new
		v94 = 0
		v93 = v93(v94, 0, 0, 0)
		v231.Position = v93
		v231.BackgroundTransparency = 1
		v231.ZIndex = 3
		v231.Parent = Frame
		Frame8.Parent = v231
		v93 = false
		v94 = _G
		v94._FH_GuiLocked = false
		v94 = _G
		local v232 = _G._FH_LockListeners
		if not v232 then
			v232 = {}
		end
		v94._FH_LockListeners = v232
		v94 = nil

		local function v233()
			for _, _ in ipairs(_G._FH_LockListeners) do
			end
		end

		v94 = _FH_NV(v233)

		local function v234(...)
			local _ = 28085 + (bit32.lrotate(string.byte("\194I\222\185\243", 5, nil), 4) + string.byte("Z\168\210;", 4, nil)) + -32029
			if type(nil) == "function" then
				local insert3 = table.insert
				local _FH_LockListeners = _G._FH_LockListeners
				insert3(_FH_LockListeners, nil)
				pcall(_FH_LockListeners, _G._FH_GuiLocked)
			end
		end

		_G._FH_OnLockChanged = _FH_NV(v234)
		local _G3 = _G
		local v235 = _G._FH_DragClearers
		if not v235 then
			v235 = {}
		end
		_G3._FH_DragClearers = v235

		local function v236()
			for _, _ in ipairs(_G._FH_DragClearers) do
			end
		end

		_G._FH_ClearAllDrags = _FH_NV(v236)
		if not _G._FH_LockWatchdog then
			_G._FH_LockWatchdog = true

			local function v237(...)
				local v738
				local v739 = v738
				v738 = 0

				local function v740()
					if v738 < 0.25 then
						return
					end
					if _G._FH_GuiLocked and _G._FH_ClearAllDrags then
						_G._FH_ClearAllDrags()
					end
				end

				;(nil)(v739, nil).Heartbeat:Connect(_FH_NV(v740))
			end

			task.spawn(v237)
		end
		local Frame9 = Instance.new("Frame")
		local new7 = UDim2.new
		local v238 = v84
		v238 = v238 and 34 or 42
		Frame9.Size = new7(1, 0, 0, v238)
		Frame9.BackgroundTransparency = 1
		Frame9.ZIndex = 4
		Frame9.Parent = v231
		local Frame10 = Instance.new("Frame")
		Frame10.Size = UDim2.new(1, -14, 0, 1)
		Frame10.Position = UDim2.new(0, 7, 1, -1)
		Frame10.BackgroundColor3 = v49.White
		Frame10.BackgroundTransparency = 0.7
		Frame10.BorderSizePixel = 0
		Frame10.ZIndex = 5
		Frame10.Parent = Frame9
		local Frame11 = Instance.new("Frame")
		Frame11.Size = UDim2.new(0, 10, 0, 10)
		Frame11.Position = UDim2.new(0, 12, 0.5, -5)
		Frame11.BackgroundColor3 = v49.White
		Frame11.BorderSizePixel = 0
		Frame11.ZIndex = 6
		Frame11.Parent = Frame9
		v147(Frame11, 3)
		local v239 = v84
		v239 = v239 and 11 or 13
		local v240 = v171(Frame9, "Faded Hub", v239, v49.White, Enum.Font.GothamBold)
		v240.Size = UDim2.new(0, 120, 0, 16)
		v240.Position = UDim2.new(0, 28, 0.5, -9)
		v240.TextYAlignment = Enum.TextYAlignment.Center
		v240.ZIndex = 5
		local v310 = v171(Frame9, "v3", 9, v49.TextDim, Enum.Font.Gotham)
		v310.Size = UDim2.new(0, 40, 0, 12)
		v310.Position = UDim2.new(0, 28, 0.5, 6)
		v310.ZIndex = 5
		local v241 = v63
		local v242 = v49
		local v243 = v147
		local v244 = v50

		local function v245(...)
			local Frame13 = Instance.new("Frame")
			Frame13.Size = UDim2.new(0, 16, 0, 16)
			Frame13.Position = UDim2.new(1, 16, 0.5, -8)
			local v741
			v741 = not not false
			v741 = v741 and v241.c1 or v242.Bg
			Frame13.BackgroundColor3 = v741
			Frame13.BorderSizePixel = 0
			Frame13.ZIndex = 6
			Frame13.Parent = nil
			v741(Frame13, 8)
			local UIStroke = Instance.new("UIStroke")
			local TextButton = Instance.new("TextButton")
			UDim2.new(1, 0, 1, 0)
			TextButton.Text = ""

			local function v742()
				({}).Transparency = 0.1
			end

			TextButton.MouseEnter:Connect(_FH_NV(v742))
			local MouseLeave = TextButton.MouseLeave

			local function v743(...)
				local v744
				v744 = not false
				v744 = v744 and 400 or 392
				v68(nil, nil, {})
			end

			MouseLeave:Connect(_FH_NV(v743))
			return Frame13, MouseLeave
		end

		local v246 = v84
		v246 = v246 and -88 or -48
		v248, v247 = v245(Frame9, v246, 1)
		local v249 = v84
		v249 = v249 and -68 or -28
		v95 = 2
		v251, v250 = v245(Frame9, v249, v95)
		v95 = "TextButton"
		local v252 = Instance.new(v95)
		v95 = v84
		v95 = v95 and 28 or 22
		v96 = v84
		v96 = v96 and -36 or -76
		v97 = UDim2
		v97 = v97.new
		v98 = 0
		v99 = v95
		v100 = 0
		v101 = v95
		v97 = v97(v98, v99, v100, v101)
		v252.Size = v97
		v97 = UDim2
		v97 = v97.new
		v98 = 1
		v99 = v96
		v100 = 0.5
		v101 = -v95
		v101 = v101 / 2
		v97 = v97(v98, v99, v100, v101)
		v252.Position = v97
		v97 = v49.BgDeep
		v252.BackgroundColor3 = v97
		v252.BorderSizePixel = 0
		v252.Text = "🔓"
		v97 = Enum
		v97 = v97.Font
		v97 = v97.GothamBold
		v252.Font = v97
		v97 = v84
		v97 = v97 and 15 or 13
		v252.TextSize = v97
		v97 = v49.Text
		v252.TextColor3 = v97
		v252.AutoButtonColor = false
		v252.ZIndex = 6
		v252.Parent = Frame9
		v97 = v147
		v98 = v252
		v99 = v84
		v99 = v99 and 8 or 6
		v97(v98, v99)
		v97 = _G
		v97._FH_LockBtn = v252
		v97 = v252.Activated
		v98 = v97
		v97 = v97.Connect
		v99 = _FH_NV
		local v253 = v252
		local v254 = v49

		v100 = function(...)
			local _ = 20848 + (bit32.band(232, 313, (string.len("\"A"))) + string.byte("\200\230z\253", 4, nil)) + -21100
			_G._FH_GuiLocked = v93
			local v745 = v93
			if v745 then
				v745 = "🔒"
			end
			local v746 = v93
			if v746 then
				v746 = Color3.fromRGB(255, 200, 60)
			end
			if v93 and _G._FH_ClearAllDrags then
				_G._FH_ClearAllDrags()
			end
			if _G._FH_SaveLock then
				_G._FH_SaveLock(v93)
			end
			v94()
		end

		v97(v98, v99(v100))
		v97 = v252.MouseEnter
		v98 = v97
		v97 = v97.Connect
		v99 = _FH_NV
		local v255 = v252
		local v256 = v50
		local v257 = v49
		v100 = function()
		end
		v97(v98, v99(v100))
		v97 = v252.MouseLeave
		v98 = v97
		v97 = v97.Connect
		v99 = _FH_NV
		local v258 = v252
		local v259 = v50
		local v260 = v49
		v100 = function()
		end
		v97(v98, v99(v100))
		_FH_yield()
		v261 = {}
		v99 = game
		v100 = v99
		v99 = v99.GetService
		v101 = "HttpService"
		v99 = v99(v100, v101)
		v100 = {}
		v261.data = v100

		v100 = function()
			if not makefolder then
				return
			end
			if isfolder and isfolder("GammaHub") then
				return
			end

			local function v747()
				makefolder("GammaHub")
			end

			pcall(_FH_NV(v747))
		end

		v101 = pcall
		v102 = v100
		v101(v102)
		v101 = pcall
		local v262 = v99
		local v263 = v261

		v102 = function(...)
			local v748
			v748 = 151 <= bit32.bnot((string.len("z")))
			v748 = v748 and 31 or 431

			local function v749(...)
				if isfile and readfile and isfile(nil) then
					local v751 = nil

					local function v752(...)
						return v262:JSONDecode(readfile(nil))
					end

					local _, v753
					v753, _ = pcall(_FH_NV(v752))
					if v753 then
						local v754 = type(nil)
						if v754 == "table" then
							return v754
						end
					end
				end
			end

			local v750 = (nil)("GammaHub/config.json")
			if not v750 then
				v750 = v749("GammaHub/config.bak.json")
			end
			if not v750 then
				v750 = v750("violet_hub_config.json")
			end
		end

		v101(v102)
		local v264 = v261
		local v265 = v100
		local v266 = v99

		v101 = function(...)
			if not writefile then
				return
			end
			if v264._dirty == false then
				return
			end
			pcall(nil)

			local function v755(...)
				local v757
				v757 = string.byte("~X\164", 3, nil) == string.unpack(">i8", "\0\0\0\0\0\0\0\225")
				v757 = v757 and 278 or string.len(".")
				return (nil)(nil, nil)
			end

			local _, v756
			v756, _ = pcall(_FH_NV(v755))
			if not v756 then
				return
			end
			local _ = 2162 + (181 - string.unpack("<i8", "\229\1\0\0\0\0\0\0") + string.unpack(">i8", "\0\0\0\0\0\0\0\14")) + -1870
			return nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
		end

		v102 = nil
		v103 = "save"
		local v267 = v261
		local v268 = v101

		v104 = function(...)
			v267._dirty = true
			if not writefile then
				return
			end
			local countlz2 = bit32.countlz
			local v758 = true
			v758 = v758 and 8 or 311
			countlz2(v758)
			local _ = -4294939727 + (bit32.bnot((string.byte("\24\157\166\t", 2, 3))) + math.modf(3.141592653589793)) + -27390
			if v102 then
				return
			end

			local function v759()
				local v760
				v760 = math.modf(3.141592653589793) <= 206 + string.unpack("<i8", "+\1\0\0\0\0\0\0")
				v760 = v760 and 286 or string.unpack("<i8", "A\0\0\0\0\0\0\0")
			end

			task.delay(nil, _FH_NV(v759))
		end

		v261[v103] = v104
		v103 = _FH_NV
		local v269 = v101

		v104 = function()
			v269()
		end

		v103 = v103(v104)
		v261.flush = v103
		v103 = _FH_NV
		local v270 = v261

		v104 = function(...)
			local _ = 8068 + (bit32.bxor(378, (string.unpack("<i8", "\167\1\0\0\0\0\0\0"))) - string.byte("\30", 1, 1)) + -8188
			return nil
		end

		v103 = v103(v104)
		v261.get = v103
		v103 = nil
		v104 = _FH_NV

		local function v271(...)
			local v761
			v761 = not not false
			v761 = v761 and string.unpack(">i8", "\0\0\0\0\0\0\0T") or
				string.byte("\146\221\24", 1, 1)
			local v762
			if type(nil) == "number" then
				local v763 = (nil)(nil)
				if v763 == "number" then
					v762 = math.abs(v763) < 1e-09
					return v762
				end
			end
			return true
		end

		v104 = v104(v271)
		v103 = v104
		v104 = _FH_NV
		local v272 = v261
		local v273 = v101

		local function v274()
			local data = v272.data
			if v103 then
				return
			end
			local v764 = type(data)
			if v764 == "number" then
				local _ = 7058 + (bit32.bor(string.byte("\230", 1, nil), 265, 215) + 254) + -7817
				v272.save()
			else
				v764()
				if v102 then
					task.cancel(v102)
				end
			end
		end

		v104 = v104(v274)
		v261.set = v104
		v104 = task
		v104 = v104.spawn
		local v275 = v101

		local function v276(...)
			local v765 = nil
			while true do
				v765.wait(45)
				if v64() then
					break
				else
					v765 = writefile
					if v765 then
						v765()
					end
				end
			end
		end

		v104(_FH_NV(v276))
		v104 = pcall
		local v277 = v101

		local function v278()
			local function v766()
				v277()
			end

			game:BindToClose(_FH_NV(v766))
		end

		v104(v278)
		v104 = pcall
		local v279 = v101

		local function v280()
			local LocalPlayer8 = GetService2.LocalPlayer
			if LocalPlayer8 then
				local AncestryChanged2 = LocalPlayer8.AncestryChanged

				local function v767()
					while true do
					end
				end

				LocalPlayer8(AncestryChanged2.Connect, AncestryChanged2, _FH_NV(v767))
			end
		end

		v104(v280)
		v104 = pcall
		local v281 = v101

		local function v282()
			local _ = 5501 + (bit32.countlz((math.modf(3.141592653589793))) + string.unpack("<i8", "'\1\0\0\0\0\0\0")) + -5663

			local function v768()
				v281()
			end

			game.Close:Connect(_FH_NV(v768))
		end

		v104(v282)
		v95 = _G
		v95 = v95._FH_BannerFrame
		if v95 then
			v96 = v261.get
			v97 = "bannerY"
			v98 = nil
			v96 = v96(v97, v98)
			v97 = type
			v98 = v96
			v97 = v97(v98)
			if v97 == "number" then
				v97 = UDim2
				v97 = v97.new
				v98 = 0.5
				v99 = 0
				v100 = 0
				v101 = v96
				v97 = v97(v98, v99, v100, v101)
				v95.Position = v97
			end
			v97 = v177
			v98 = "bannerY"
			v99 = _FH_NV
			local v283 = v95

			v100 = function(...)
				local _ = -114216 + bit32.lrotate(
					math.modf(3.141592653589793) + string.unpack(">i8", "\0\0\0\0\0\0\0\27"),
					12
				) + -8663
				if type(nil) == "number" then
					v283.Position = UDim2.new
				end
			end

			v97(v98, v99(v100))
			v97 = false
			v98 = 0
			v99 = 0
			v100 = v95.InputBegan
			v101 = v100
			v100 = v100.Connect
			v102 = _FH_NV
			local v284 = v95

			v103 = function(...)
				if v93 == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
				end
			end

			v100(v101, v102(v103))
			v100 = v95.InputEnded
			v101 = v100
			v100 = v100.Connect
			v102 = _FH_NV
			local v285 = v261
			local v286 = v95

			v103 = function(...)
				if (nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch) and v97 then
					while true do
					end
				end
			end

			v100(v101, v102(v103))
			v100 = UserInputService.InputChanged
			v101 = v100
			v100 = v100.Connect
			v102 = _FH_NV
			local v287 = v178
			local v288 = v95

			v103 = function(...)
				if v93 then
					return
				end
				if v97 and
					((nil).UserInputType == Enum.UserInputType.MouseMovement or
						(nil).UserInputType == Enum.UserInputType.Touch) then
					local v769 = (nil).Position.Y
					local AbsoluteSize3 = v287.AbsoluteSize
					local AbsoluteSize4 = v288.AbsoluteSize
					local clamp3 = math.clamp
					local max = math.max
					local v770 = AbsoluteSize3.Y - AbsoluteSize4.Y
					clamp3(v99 + (v769 - v98), 0, max(0, v770))
					v288.Position = UDim2.new(0.5, 0, 0, v770)
				end
			end

			v100(v101, v102(v103))
		end
		v95 = _G
		v95 = v95._FH_JoinTime
		if not v95 then
			v95 = os
			v95 = v95.time
			v95 = v95()
			v96 = tostring
			v97 = game
			v97 = v97.JobId
			v96 = v96(v97)
			if v96 == "" then
				v96 = "studio"
			end
			v98 = v261.get
			v99 = "joinTimes"
			v100 = nil
			v98 = v98(v99, v100)
			v99 = type
			v100 = v98
			v99 = v99(v100)
			if v99 ~= "table" then
				v99 = {}
				v98 = v99
			end
			v99 = v98[v96]
			v100 = type
			v101 = v99
			v100 = v100(v101)
			if v100 == "number" and 0 < v99 and v99 <= v95 then
				v100 = _G
				v100._FH_JoinTime = v99
			else
				v100 = _G
				v100._FH_JoinTime = v95
				v100 = {}
				v101 = pairs
				v102 = v98
				local v289, v290, v291
				v291, v290, v289 = v101(v102)
				v101 = v291
				v102 = v290
				v103 = v289
				local v292 = v101
				local v293 = v102
				local v294 = v103
				while true do
					local v295
					v294, v295 = v292(v293, v294)
					if v294 == nil then
						break
					else
						v102 = v294
						v103 = v295
						v104 = type
						v104 = v104(v103)
						if v104 == "number" and v95 - v103 < 86400 then
							v100[v102] = v103
						end
					end
				end
				v100[v96] = v95
				v101 = pcall
				v102 = _FH_NV
				local v296 = v261
				local v297 = v100
				v103 = function()
				end
				v101(v102(v103))
			end
		end
		v95 = _FH_NV

		v96 = function(...)
			local _ = 29689 + bit32.rshift(
				bit32.bor(179, (string.unpack("<i8", "B\0\0\0\0\0\0\0"))),
				13
			) + -29688
			local v771 = (nil).time()
			local v772 = _G._FH_JoinTime
			if not v772 then
				v772 = os.time()
			end
			return v771 - v772
		end

		v95 = v95(v96)
		_FH_SecondsInGame = v95
		v95 = true
		v96 = nil
		v97 = Instance
		v97 = v97.new
		v98 = "TextButton"
		v97 = v97(v98)
		v98 = UDim2
		v98 = v98.new
		v99 = 0
		v100 = 88
		v101 = 0
		v102 = 34
		v98 = v98(v99, v100, v101, v102)
		v97.Size = v98
		v98 = UDim2
		v98 = v98.new
		v99 = 0
		v100 = 8
		v101 = 0.5
		v102 = -17
		v98 = v98(v99, v100, v101, v102)
		v97.Position = v98
		v98 = v49.BgDeep
		v97.BackgroundColor3 = v98
		v97.BorderSizePixel = 0
		v97.Text = "FADED"
		v98 = Enum
		v98 = v98.Font
		v98 = v98.GothamBold
		v97.Font = v98
		v97.TextSize = 13
		v98 = v49.Text
		v97.TextColor3 = v98
		v97.AutoButtonColor = false
		v97.Visible = true
		v97.ZIndex = 10
		v97.Parent = v178
		v98 = v87
		v99 = v97
		v98(v99)
		v98 = v147
		v99 = v97
		v100 = 10
		v98(v99, v100)
		v98 = v150
		v99 = v97
		v100 = Color3
		v100 = v100.fromRGB
		v101 = 40
		v102 = 40
		v103 = 60
		v100 = v100(v101, v102, v103)
		v101 = 1
		v102 = 0.5
		v98(v99, v100, v101, v102)
		v98 = v97.MouseEnter
		v99 = v98
		v98 = v98.Connect
		v100 = _FH_NV
		local v298 = v97
		local v299 = v50
		local v300 = v49
		v101 = function()
		end
		v98(v99, v100(v101))
		v98 = v97.MouseLeave
		v99 = v98
		v98 = v98.Connect
		v100 = _FH_NV
		local v301 = v97
		local v302 = v50
		local v303 = v49

		v101 = function()
			while true do
			end
		end

		v98(v99, v100(v101))
		v98 = nil
		v99 = nil
		v100 = nil
		v101 = nil
		v102 = nil
		v103 = v97.InputBegan
		v104 = v103
		v103 = v103.Connect
		local v304 = v97

		local function v305(...)
			if nil == Enum.UserInputType.MouseButton1 then
			end
			tick()
		end

		v103(v104, _FH_NV(v305))
		v103 = UserInputService.InputEnded
		v104 = v103
		v103 = v103.Connect
		local v306 = v97
		local v307 = v261

		local function v308(...)
			local _leave8 = false
			if (nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch) and v98 then
				if not v101 then
					local v773 = tick()
					local v774 = v102
					if not v774 then
						v774 = 0
					end
					if v773 - v774 < 0.3 then
						if v96 then
							v96(not v95)
							_leave8 = true
						else
							_leave8 = true
						end
					end
				end
				if not _leave8 then
					local Position = v306.Position
					local set = v307.set
					local v775 = table.create(4)
					local Scale = Position.X.Scale
					local Offset = Position.X.Offset
					local Scale2 = Position.Y.Scale
					local Offset2 = Position.Y.Offset
					v775[1] = Scale
					v775[2] = Offset
					v775[3] = Scale2
					v775[4] = Offset2
					set("reopen_pos", v775)
				end
			end
		end

		v103(v104, _FH_NV(v308))
		v103 = UserInputService.InputChanged
		v104 = v103
		v103 = v103.Connect
		local v309 = v97

		local function v311(...)
			if v98 and
				((nil).UserInputType == Enum.UserInputType.MouseMovement or
					(nil).UserInputType == Enum.UserInputType.Touch) then
				if v93 then
					return
				end
				local v776 = (nil).Position - v99
				local abs = math.abs
				local v777 = v776.X
				if not (6 < abs(v777)) then
					v777 = math.abs(v776.Y)
				end
				if v101 then
					local CurrentCamera2 = workspace.CurrentCamera
					v777 = v777 and CurrentCamera2.ViewportSize or Vector2.new(1920, 1080)
					local AbsoluteSize5 = v309.AbsoluteSize
					math.clamp(
						v100.X.Scale * v777.X + v100.X.Offset + v776.X,
						0,
						math.max(0, v777.X - AbsoluteSize5.X)
					)
					local clamp4 = math.clamp
					local Scale3 = v100.Y.Scale
					local v778 = v777.Y
					local Offset3 = v100.Y.Offset
					local v779 = v776.Y
					local max2 = math.max
					local v780 = clamp4(
						Scale3 * v778 + Offset3 + v779,
						0,
						max2(0, v777.Y - AbsoluteSize5.Y)
					)
					v309.Position = UDim2.new(0, max2, 0, v780)
				end
			end
		end

		v103(v104, _FH_NV(v311))
		v98 = _FH_yield
		v98()
		v101 = nil
		v102 = nil
		v103 = nil
		v104 = nil
		Frame9.Active = true
		local function v312()
		end
		table.insert(_G._FH_DragClearers, _FH_NV(v312))
		local v313 = Frame

		local function v314(...)
			local v781 = v93
			if v781 then
				return
			end
			if v781 == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
				local AbsolutePosition = v313.AbsolutePosition
				Vector2.new(0, 0)
				UDim2.new(0, AbsolutePosition.X, 0, AbsolutePosition.Y)
			end
		end

		Frame9.InputBegan:Connect(_FH_NV(v314))

		local function v315(...)
			if nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
			end
		end

		Frame9.InputEnded:Connect(_FH_NV(v315))
		local v316 = Frame

		local function v317(...)
			if v93 then
				return
			end
			if v101 then
				local UserInputType = (nil).UserInputType
				local v782 = Enum.UserInputType.MouseMovement
				if UserInputType == v782 or (nil).UserInputType == Enum.UserInputType.Touch then
					if not v102 then
						v782 = Vector2.new(
							(nil).Position.X - v103 - v316.AbsolutePosition.X,
							(nil).Position.Y - v104 - v316.AbsolutePosition.Y
						).Magnitude
						if v782 < 8 then
							return
						end
					end
					local CurrentCamera3 = workspace.CurrentCamera
					v782 = v782 and CurrentCamera3.ViewportSize or Vector2.new(1920, 1080)
					local AbsoluteSize6 = v316.AbsoluteSize
					math.clamp(
						(nil).Position.X - v103,
						0,
						math.max(0, v782.X - AbsoluteSize6.X)
					)
					local clamp5 = math.clamp
					local v783 = (nil).Position.Y
					local max3 = math.max
					local v784 = v782.Y - AbsoluteSize6.Y
					clamp5(v783 - v104, 0, max3(0, v784))
					v316.Position = UDim2.new(0, max3, 0, v784)
				end
			end
		end

		UserInputService.InputChanged:Connect(_FH_NV(v317))
		v101 = v84
		v101 = v101 and 34 or 42
		v101 = v101 + 2
		v101 = v101 + v229
		v101 = v101 + 4
		v102 = Instance
		v102 = v102.new
		v103 = "Frame"
		v102 = v102(v103)
		v103 = UDim2
		v103 = v103.new
		v104 = 1
		v103 = v103(v104, 0, 1, -(v101 + 10))
		v102.Size = v103
		v103 = UDim2
		v103 = v103.new
		v104 = 0
		v103 = v103(v104, 0, 0, v101)
		v102.Position = v103
		v102.BackgroundTransparency = 1
		v102.ClipsDescendants = true
		v102.ZIndex = 3
		v102.Parent = v231
		v103 = Instance
		v103 = v103.new
		v104 = "Frame"
		v103 = v103(v104)
		v103.Name = "StatusBar"
		v104 = UDim2
		v104 = v104.new
		v104 = v104(1, 0, 0, 22)
		v103.Size = v104
		v104 = UDim2
		v104 = v104.new
		v104 = v104(0, 0, 1, -22)
		v103.Position = v104
		v104 = Color3
		v104 = v104.fromRGB
		v104 = v104(10, 10, 15)
		v103.BackgroundColor3 = v104
		v103.BorderSizePixel = 0
		v103.ZIndex = 5
		v103.Visible = false
		v103.Parent = v231
		v104 = Instance
		v104 = v104.new
		v104 = v104("Frame")
		v105 = 1
		v104.Size = UDim2.new(1, 0, 0, v105)
		v104.BackgroundColor3 = Color3.fromRGB(30, 30, 46)
		v104.BorderSizePixel = 0
		v104.ZIndex = 6
		v104.Parent = v103
		local TextLabel = Instance.new("TextLabel")
		v105 = 1
		TextLabel.Size = UDim2.new(0, 180, v105, 0)
		v105 = 0
		TextLabel.Position = UDim2.new(0, 10, v105, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = "FPS: --   PING: --ms"
		TextLabel.TextSize = 9
		TextLabel.Font = Enum.Font.GothamMedium
		v105 = 125
		TextLabel.TextColor3 = Color3.fromRGB(100, 100, v105)
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextYAlignment = Enum.TextYAlignment.Center
		TextLabel.ZIndex = 6
		TextLabel.Parent = v103
		local Frame12 = Instance.new("Frame")
		v105 = 7
		Frame12.Size = UDim2.new(0, v105, 0, 7)
		v105 = -50
		Frame12.Position = UDim2.new(1, v105, 0.5, -3)
		v105 = 197
		Frame12.BackgroundColor3 = Color3.fromRGB(34, v105, 94)
		Frame12.BorderSizePixel = 0
		Frame12.ZIndex = 6
		Frame12.Parent = v103
		local UICorner = Instance.new("UICorner")
		v105 = 1
		UICorner.CornerRadius = UDim.new(v105, 0)
		UICorner.Parent = Frame12
		v105 = "TextLabel"
		local v318 = Instance.new(v105)
		v105 = UDim2
		v105 = v105.new
		v106 = 1
		v107 = 0
		v105 = v105(0, 30, v106, v107)
		v318.Size = v105
		v105 = UDim2
		v105 = v105.new
		v106 = 0
		v107 = 0
		v105 = v105(1, -40, v106, v107)
		v318.Position = v105
		v318.BackgroundTransparency = 1
		v318.Text = "ON"
		v318.TextSize = 9
		v105 = Enum
		v105 = v105.Font
		v105 = v105.GothamBold
		v318.Font = v105
		v105 = Color3
		v105 = v105.fromRGB
		v106 = 94
		v105 = v105(34, 197, v106)
		v318.TextColor3 = v105
		v105 = Enum
		v105 = v105.TextXAlignment
		v105 = v105.Left
		v318.TextXAlignment = v105
		v105 = Enum
		v105 = v105.TextYAlignment
		v105 = v105.Center
		v318.TextYAlignment = v105
		v318.ZIndex = 6
		v318.Parent = v103
		v105 = nil
		local Heartbeat = RunService.Heartbeat
		local Connect = Heartbeat.Connect
		v106 = _FH_NV
		local v319 = TextLabel
		local v320 = v84
		local v321 = v130

		v107 = function(...)
			local v785 = nil
			local v786 = v64()
			if v786 then
				v105:Disconnect()
				return
			end
			local v787 = _G._FH_GAMMA_GEN
			if v786 ~= v787 then
				v105:Disconnect()
				return
			end
			local v788 = v74
			if 1 <= v788 then
				math.floor(v73 / v74)
				local floor2 = math.floor
				local v789 = GetService2.LocalPlayer
				v789 = v789 and GetService2.LocalPlayer:GetNetworkPing() or 0
				v788 = floor2(v789 * 1000)
				v787 = "FPS: " .. v72 .. "   PING: " .. v788 .. "ms"
				v785 = v76
				if v787 ~= v785 then
					v785 = v75
					if v785 then
						v785 = pcall
						v785(v75, v72, nil)
					end
					v319.Text = v787
				end
			end
			if not v788 then
				if v71 < 0.125 then
					return
				end
				v82(v77)
				if #v321 == 0 then
					return
				end
				for v790 = 1, v785 do
					local v791 = v321[v790]
					local grad = v791.grad
					if grad and grad.Parent and
						(grad.Parent.Parent and
							grad.Rotation ~= v791.baseRot + v70 * v791.speed) then
					end
				end
			end
		end

		v105 = Connect(Heartbeat, v106(v107))
		_FH_yield()
		local v322 = v49
		local v323 = v152

		local function v324()
			local ScrollingFrame = Instance.new("ScrollingFrame")
			UDim2.new(1, 0, 1, 0)
			UDim2.new(0, 0, 0, 0)
			Instance.new("UIListLayout")
			UDim.new(0, 6)(0, 8, 8, 8, 8)
			return ScrollingFrame, 0
		end

		v106 = nil
		v107 = false
		v108 = 0
		local v325 = v50
		local v326 = v62

		v327 = function(...)
			if v106 == nil or v107 then
				return
			end
			local v792 = v108

			local function v793()
				local _ = 21545 + bit32.countrz((bit32.lrotate(
					string.unpack(">i8", "\0\0\0\0\0\0\1\173"),
					5
				))) + -21431
				while true do
				end
			end

			local v794 = _FH_NV(v793)
			task.delay(0.7, nil)
			local v795 = v106
			if v795 then
				local v796 = v68
				local btn = v795.btn
				local v797 = v325
				Color3.fromRGB(23, 26, 36)
				v796(btn, v797, {})
				local v798 = v68
				local lbl = v795.lbl
				local v799 = v325
				Color3.fromRGB(210, 225, 255)
				v798(lbl, v799, {})
			end
			local v800 = v68
			local btn2 = (nil).btn
			local v801 = v325
			Color3.fromRGB(70, 80, 110)
			v800(btn2, v801, {})
			local v802 = v68
			local lbl2 = (nil).lbl
			local v803 = v325
			local v804 = Color3.fromRGB(245, 248, 255)
			v802(lbl2, v803, {})
			local v805
			if v795 then
				local pcall7 = pcall
				local v806 = _FH_NV

				local function v807()
					return v795.canvas:IsA("CanvasGroup")
				end

				local v808 = pcall7(v806(v807))
				if v808 then
					v806 = v795.canvas
					v808 = v806:IsA("CanvasGroup")
				end
				v805 = v794
				if v808 then
					local Create = v806:Create(v795.canvas, v804, {})
					Create:Play()
					local v809 = nil

					local function v810(...)
						local function v816()
						end
						pcall(_FH_NV(v816))

						local function v817()
							return v809.canvas:IsA("CanvasGroup")
						end

						local v818 = pcall(_FH_NV(v817))
						if v818 then
							v818 = v809.canvas:IsA("CanvasGroup")
						end
						local pcall10 = pcall
						local v819 = v818
						local function v820()
						end
						pcall10(_FH_NV(v820))
						if v818 then
							local Create2 = pcall10:Create(v809.canvas, nil, {})
							Create2:Play()
							Create2.Completed:Connect(v805)
						else
							v805()
						end
					end

					Create.Completed:Connect(v810)
				else
					local function v811()
						while true do
						end
					end

					pcall(_FH_NV(v811))
					local pcall8 = pcall
					local v812 = nil
					local function v813()
					end
					pcall8(_FH_NV(v813))
					pcall8()
					v805 = v794
				end
			else
				local pcall9 = pcall
				local v814 = nil

				local function v815()
					local v821
					v821 = math.modf(3.141592653589793) < 1
					v821 = v821 and string.unpack("<i8", "\133\1\0\0\0\0\0\0") or 241
					local v822 = pcall()
					if v822 then
						v822 = v814.canvas:IsA("CanvasGroup")
					end
				end

				pcall9(v815)
				pcall9()
				v805 = v794
			end
		end

		local v328 = Frame8
		local v329 = v147
		local v330 = v171
		local v331 = v84
		local v332 = v102
		local v333 = _FH_NV(v324)
		local v334 = v50
		local v335 = v327
		local v336 = {}

		local function v337()
			local TextButton2 = Instance.new("TextButton")
			UDim2.new(0.2, -4, 1, -6)
			UDim2.new(0, 2, 0, 3)
			Color3.fromRGB(23, 26, 36)
			TextButton2.BorderSizePixel = 0
			v328(23, 8)
			Instance.new("Frame")
			local v823 = 0
			local v824 = UDim2.new(0, 0, v823, 0)
			if v823 then
				v823 = 9
			end
			local v825 = 0
			if not v823 then
				v823 = 10
				v825 = 0
			end
			local v826 = v825
			v825 = 1
			v824(0, v826, v823, Color3.fromRGB(210, 225, 255), Enum.Font.GothamBold).Size = UDim2.new(v825, -2, 1, 0)
			v825 = 0
			UDim2.new(v825, 1, 0, 0)
			v825 = "Frame"
			Instance.new(v825)
			v825 = UDim2
			v825 = v825.new
			v825 = v825(1, 0, 1, 0)
			v825 = v332
			v825 = nil

			local function v827()
				Instance.new("CanvasGroup")
				v825.GroupTransparency = 0
			end

			if not pcall(v827) then
				v825 = Instance.new("Frame")
			end
			local v828 = { scroll = UDim2.new(1, 0, 1, 0)(1) }

			local function v829()
				bit32.rshift(758, 4)
				;({}).BackgroundColor3 = Color3.fromRGB(40, 45, 60)
			end

			TextButton2.MouseEnter:Connect(v829)

			local function v830()
				({}).BackgroundColor3 = Color3.fromRGB(23, 26, 36)
			end

			TextButton2.MouseLeave:Connect(v830)
			local Activated = TextButton2.Activated

			local function v831(...)
				local v832, v833
				while true do
					v335(v832)
					local v834 = 98
					if not v834 then
						v834 = 404
					end
					v833[33] = 30
					v833 = nil
					v832 = nil
				end
			end

			Activated:Connect(v831)
			local insert4 = table.insert
			insert4(Activated, v831)
			return insert4
		end

		v338 = _FH_NV(v337)
		local v339 = v84
		local v340 = v49
		local v341 = v147
		local v342 = v171

		local function v343()
			local Frame14 = Instance.new("Frame")
			local new14 = UDim2.new
			local v835 = v339
			v835 = v835 and 26 or 30
			new14(1, -8, 0, v835)
			local Frame15 = Instance.new("Frame")
			Frame15.Size = UDim2.new(1, 0, 0, 1)
			Frame15.Position = UDim2.new(0, 0, 0.5, 0)
			Frame15.BackgroundColor3 = v340.Line
			Frame15.BorderSizePixel = 0
			Frame15.Parent = Frame14
			Instance.new("Frame")
			UDim2.new(0, 21.5, 0, 20)
			UDim2.new(0, 10, 0.5, -10)
			local Bg = v340.Bg
			Bg(0, 6)
			Bg(
				0,
				(6)(0.5),
				10,
				v340.TextDim,
				Enum.Font.GothamBold,
				Enum.TextXAlignment.Center
			)
			UDim2.new(1, 0, 1, 0)
		end

		v344 = _FH_NV(v343)
		local v345 = v49
		local v346 = v147
		local v347 = v150
		local v348 = v50

		local function v349(...)
			local Frame16 = Instance.new("Frame")
			local UDim22 = UDim2
			bit32.bxor(24, 42)
			Frame16.Size = UDim22.new(1, -8, 0, nil)
			Frame16.BackgroundColor3 = v345.Card
			local v836 = v65
			v836(1, "Card")
			v836(1, 8)
			local v837 = v836(1, v345.Line, 1, 0.35)

			local function v838()
				while true do
				end
			end

			Frame16.MouseEnter:Connect(v838)
			local MouseLeave2 = Frame16.MouseLeave
			local Connect2 = MouseLeave2.Connect
			local function v839()
			end
			Connect2(MouseLeave2, v839)
			return Connect2, v837
		end

		v350 = _FH_NV(v349)
		local v351 = v261

		v109 = function(...)
			local v840 = nil

			local function v841(...)
				local v842 = nil
				local _ = -771963 + bit32.rrotate(
					bit32.rshift(string.byte("\14\216\26\203`", 4, nil), 5),
					15
				) + -14445
				if v842 then
					v842 = true
				end
			end

			pcall(_FH_NV(v841))
		end

		_G._FH_SaveLock = v109
		v109 = "gui_locked"
		v110 = false
		if v261.get(v109, v110) == true then
			v93 = true
			_G._FH_GuiLocked = true
			local _FH_LockBtn = _G._FH_LockBtn
			if _FH_LockBtn then
				_FH_LockBtn.Text = "🔒"
				v109 = Color3
				v109 = v109.fromRGB
				v110 = 255
				v111 = 200
				v109 = v109(v110, v111, 60)
				_FH_LockBtn.TextColor3 = v109
			end
		end
		v109 = "reopen_pos"
		v110 = nil
		local v352 = v261.get(v109, v110)
		v109 = type
		v110 = v352
		v109 = v109(v110)
		if v109 == "table" then
			v110 = #v352
			if v110 == 4 then
				v109 = UDim2
				v109 = v109.new
				v110 = v352[1]
				v111 = v352[2]
				local v353 = v352[3]
				v112 = v352[4]
				v109 = v109(v110, v111, v353, v112)
				v97.Position = v109
				v109 = task
				v109 = v109.defer
				v110 = _FH_NV
				local v354 = v97
				local v355 = v261

				v111 = function(...)
					local v843 = nil
					local CurrentCamera4 = workspace.CurrentCamera
					v843 = v843 and CurrentCamera4.ViewportSize or Vector2.new(1920, 1080)
					local _leave10 = false
					local AbsoluteSize7 = v354.AbsoluteSize
					local AbsolutePosition2 = v354.AbsolutePosition
					local v844 = math.clamp(
						AbsolutePosition2.X,
						0,
						math.max(0, v843.X - AbsoluteSize7.X)
					)
					local clamp6 = math.clamp
					local v845 = AbsolutePosition2.Y
					local v846 = math.max
					local v847 = v843.Y - AbsoluteSize7.Y
					local v848 = clamp6(v845, 0, v846(0, v847))
					if not (1 < math.abs(v844 - AbsolutePosition2.X)) then
						local abs2 = math.abs
						v846 = v848 - AbsolutePosition2.Y
						if not (1 < abs2(v846)) then
							_leave10 = true
						end
					end
					if not _leave10 then
						v354.Position = UDim2.new(0, v846, 0, v847)
						local set2 = v355.set
						local v849 = { 0, v847, 0, nil }
						set2("reopen_pos", v849)
					end
				end

				v109(v110(v111))
			end
		end
		v109 = v177
		v110 = "reopen_pos"
		v111 = _FH_NV
		local v356 = v97

		local function v357(...)
			if type(nil) == "table" and false then
				v356.Position = UDim2.new(nil, nil, nil, nil)
			end
		end

		v109(v110, v111(v357))
		v109 = _FH_NV
		local v358 = v261

		v110 = function(...)
			local v850 = v358.get(nil, nil)
			local v851 = type(nil)
			if v851 == "table" and #v850 == 3 then
				return Color3.fromRGB(v850[1], v850[2], v850[3])
			end
			return v851
		end

		v109 = v109(v110)
		local v359 = v109
		v109 = v359
		v110 = "theme_c1"
		v111 = v63.c1
		v109 = v109(v110, v111)
		v63.c1 = v109
		v109 = v359
		v110 = "theme_c2"
		v111 = v63.c2
		v109 = v109(v110, v111)
		v63.c2 = v109
		v109 = v359
		v110 = "theme_bg"
		v111 = nil
		v109 = v109(v110, v111)
		if v109 then
			v110 = v140
			v111 = v109
			v110(v111)
			if v251 then
				v110 = v49.Bg
				v251.BackgroundColor3 = v110
			end
		end
		local tonumber2 = tonumber
		v109 = v261.get
		v110 = "slider:UI Size"
		v111 = nil
		local v360 = tonumber2(v109(v110, v111))
		if v360 then
			v109 = task
			v109 = v109.defer
			v110 = _FH_NV
			local v361 = v198
			local v362 = v360

			v111 = function(...)
				v361.userPct = math.clamp(nil, 50, 200)
				while true do
					pcall(v91)
				end
			end

			v109(v110(v111))
		end
		_FH_yield()
		local v363 = {}
		v109 = nil
		v110 = nil
		v111 = nil
		local v364 = {}
		v112 = {}
		local v365 = {}
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad1
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad2
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad3
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad4
		v365[v113] = true
		v113 = v113.UserInputType
		v113 = v113.Gamepad5
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad6
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad7
		v365[v113] = true
		v113 = Enum
		v113 = v113.UserInputType
		v113 = v113.Gamepad8
		v365[v113] = true
		v113 = nil
		local v366 = v365

		local function v367(...)
			local v852
			v852 = not not false
			return v852
		end

		v113 = _FH_NV(v367)
		local GuiService = game:GetService("GuiService")
		local v368 = {
			ButtonA = "Cross",
			ButtonB = "Circle",
			ButtonX = "Square",
			ButtonY = "Triangle",
			ButtonL1 = "L1",
			ButtonR1 = "R1",
			ButtonL2 = "L2",
			ButtonR2 = "R2",
			ButtonL3 = "L3",
			ButtonR3 = "R3",
			ButtonStart = "Options",
			ButtonSelect = "Share",
			DPadUp = "D-Up",
			DPadDown = "D-Down",
			DPadLeft = "D-Left",
			DPadRight = "D-Right"
		}
		local v369 = {
			ButtonA = "A",
			ButtonB = "B",
			ButtonX = "X",
			ButtonY = "Y",
			ButtonL1 = "LB",
			ButtonR1 = "RB",
			ButtonL2 = "LT",
			ButtonR2 = "RT",
			ButtonL3 = "LS",
			ButtonR3 = "RS",
			ButtonStart = "Menu",
			ButtonSelect = "View",
			DPadUp = "D-Up",
			DPadDown = "D-Down",
			DPadLeft = "D-Left",
			DPadRight = "D-Right"
		}
		v114 = "xbox"
		local v370 = v363

		local function v371()
			local v853 = ""
			local v854 = ""

			local function v855(...)
				local tostring2 = tostring
				local v859 = (nil).GetStringForKeyCode(nil, Enum.KeyCode.ButtonA)
				if not v859 then
					v859 = ""
				end
				tostring2(v859)
			end

			pcall(_FH_NV(v855))

			local function v856(...)
				local _ = 5733 + bit32.bnot(4 - string.byte("\6m\133", 2, 3)) + -5833
				local tostring3 = tostring
				local v860 = (nil).GetStringForKeyCode(nil, (nil).KeyCode.ButtonY)
				if not v860 then
					v860 = ""
				end
				tostring3(v860)
			end

			pcall(_FH_NV(v856))
			local v857 = (v853 .. " " .. v854):lower()
			if not (v857:find("cross") or v857:find("circle") or
				(v857:find("square") or v857:find("triangle"))) then
				v857 = v853
				if not v853.find(v857, "✕") then
					v857 = v854
					if v854.find(v857, "△") then
					end
				end
			end
			for _, v858 in ipairs(v857) do
				if v858.refresh then
					pcall(v858.refresh)
				end
			end
		end

		v115 = v371
		pcall(v115)
		local v372 = v371

		v115 = function()
			local function v861()
				pcall(v372)
			end

			UserInputService.GamepadConnected:Connect(_FH_NV(v861))
			local function v862()
			end
			UserInputService.LastInputTypeChanged:Connect(_FH_NV(v862))
		end

		pcall(v115)
		local v373 = v368
		local v374 = v369

		local function v375(...)
			if not nil then
				return "?"
			end
			local Name = (nil).Name
			local v863
			if Name ~= "" then
				local _ = -661340 + bit32.lrotate(
					bit32.bxor(
						math.modf(3.141592653589793),
						3,
						(string.unpack("<i8", "L\1\0\0\0\0\0\0"))
					),
					11
				) + -18593
				if Name ~= "Unknown" then
					local v864 = v114
					v863 = v864 == "ps"
					local v865 = v864[Name]
					local v866 = v865
					if v865 then
						return v864[Name]
					end
					v866 = nil
					local v867 = v863

					local function v868(...)
						local _ = 6877 + bit32.bxor(
							137,
							(string.unpack(">i8", "\0\0\0\0\0\0\0z"))
						) + -7119
					end

					pcall(_FH_NV(v868))
					if type(v866) == "string" and v866 ~= "" and
						not (v866:lower() == "unknown" or not (#v866 <= 14)) then
						return v866
					end
					return (Name:gsub("^Button", ""):gsub("^DPad", "D-"))
				end
			end
			return "?"
		end

		v115 = nil
		v116 = _FH_NV

		v117 = function()
			if v109 then
				v109.refresh()
			end
		end

		v116 = v116(v117)
		v115 = v116
		v116 = nil
		v117 = _FH_NV

		local function v376(...)
			if nil then
				local v869 = v110
				if v869.refresh then
					v869.refresh()
				end
			end
		end

		v117 = v117(v376)
		v116 = v117
		v117 = nil

		local function v377(...)
			local v870 = nil
			while true do
				local v871 = false
				v871 = v871 and string.unpack("<i8", "\195\1\0\0\0\0\0\0") or 211
				if v870 then
					if v870.IsA and not v870.Visible then
						return false
					end
					v870 = v870.Parent
				else
					return true
				end
			end
		end

		v117 = _FH_NV(v377)
		local v378 = GuiService
		local v379 = v363

		local function v380(...)
			local pcall11 = pcall
			local _FH_NV3 = _FH_NV

			local function v872()
				return UserInputService:GetMouseLocation()
			end

			_FH_NV3(v872)
			if pcall11 then
				local v873 = v872
				if _FH_NV3 then
					v873 = Vector2
					v873 = v873.new
					v873 = v873(0, 0)

					local function v874(...)
						(nil).GetGuiInset(nil)
					end

					pcall(_FH_NV(v874))
					local v875 = _FH_NV3.X + v873.X
					local v876 = _FH_NV3.Y + v873.Y
					for _, v877 in ipairs(nil) do
						local host = v877.host
						if host then
							local AbsolutePosition3 = host.AbsolutePosition
							local AbsoluteSize8 = host.AbsoluteSize
							local v878 = AbsoluteSize8.X
							if 0 < v878 and 0 < AbsoluteSize8.Y and
								(AbsolutePosition3.X <= v875 and
									v875 <= AbsolutePosition3.X + AbsoluteSize8.X) and
								(AbsolutePosition3.Y <= v876 and
									v876 <= AbsolutePosition3.Y + AbsoluteSize8.Y and v117(host)) then
								return v878
							end
						end
					end
					return nil
				end
			end
			return v111
		end

		local v381 = {
			[Enum.KeyCode.W] = true,
			[Enum.KeyCode.A] = true,
			[Enum.KeyCode.S] = true,
			[Enum.KeyCode.D] = true,
			[Enum.KeyCode.Space] = true
		}
		local v382 = v375
		local v383 = v363
		local v384 = v261
		local v385 = v381

		v386 = function(...)
			local v879 = nil
			local v880 = {}
			local v881, v882

			local function v883(...)
				local v902 = nil
				if v109 ~= nil then
					local v903 = v110
					if v903 ~= v902 then
						if v880.key then
							local insert5 = table.insert
							v902 = v880.key.Name
							insert5(v903, v902)
						end
						if v880.padKey then
							local _ = 7754 + (bit32.bor(math.modf(3.141592653589793), 70, 10) + 4) + -7827
							;(nil)(v902(v880.padKey))
						end
						if 0 < #{} then
							table.concat(v902, " / ")
						end
						return
					end
				end
			end

			_FH_NV(v883)
			table.insert(v883, nil)
			local v884 = v384.get(v880.cfgKey, nil)
			if v884 then
				local function v885()
					return Enum.KeyCode[v884]
				end

				local v886, v887
				v887, v886 = pcall(_FH_NV(v885))
				if not (v887 and v886 and not v385[v886] or not (v887 and v886 and v385[v886])) then
					local set3 = v384.set
					v879 = v880.cfgKey
					set3(v879, nil)
				end
			end
			local get = v384.get
			local padCfgKey = v880.padCfgKey
			local v888 = get(padCfgKey, nil)
			local v889 = nil
			local v890 = padCfgKey
			local v891 = nil
			local v892 = v879
			if v888 then
				v889 = nil
				v890 = padCfgKey
				v891 = nil
				v892 = v879
				if v888 ~= "Unknown" then
					local function v893()
						string.unpack("<i8", "&\0\0\0\0\0\0\0")
					end

					local v894, v895
					v895, v894 = pcall(_FH_NV(v893))
					v889 = nil
					v890 = v895
					v891 = v894
					v892 = v893
					if v895 then
						v889 = nil
						v890 = v895
						v891 = v894
						v892 = v893
						if v894 then
							local Unknown = Enum.KeyCode.Unknown
							v889 = nil
							v890 = v895
							v891 = v894
							v892 = Unknown
						end
					end
				end
			end
			v890()
			v890 = (nil).MouseEnter
			v891 = v890
			v890 = v890.Connect
			v892 = _FH_NV

			local function v896()
				bit32.bnot(11)
			end

			v890(v891, v892(v896))
			v890 = (nil).MouseLeave
			v891 = v890
			v890 = v890.Connect
			v892 = _FH_NV
			local function v897()
			end
			v890(v891, v892(v897))
			v890 = (nil).MouseButton2Click
			v891 = v890
			v890 = v890.Connect
			v892 = _FH_NV

			local function v898()
				string.byte("x", 1, 1)
				local v904 = v116
				v904()
				if v904 and v109 ~= v109 then
					v115()
				end
				v889()
			end

			v890(v891, v892(v898))
			v890 = 0
			v891 = false
			v892 = nil

			local function v899()
				local v905 = Enum.Touch
				if not v905 then
					v905 = Enum.UserInputType.MouseButton1
				end
				return v905
			end

			v892 = _FH_NV(v899)

			local function v900(...)
				local UserInputType2 = (nil).UserInputType
				if not v892(UserInputType2) then
					return
				end
				if v113(UserInputType2:GetLastInputType()) then
					return
				end
				tick()

				local function v906()
					local v907
					v907 = string.unpack(">i8", "\0\0\0\0\0\0\1.") - string.byte("\179\4", 2, nil) == 7
					v907 = v907 and 255 or string.len("\137")
					if v891 and 1.5 <= tick() then
						v116()
						if v109 and v109 ~= v880 then
							v115()
						end
						v889()
					end
				end

				task.delay(1.5, _FH_NV(v906))
			end

			;(nil).InputBegan:Connect(v900)

			local function v901(...)
				if v892(nil) then
				end
			end

			;(nil).InputEnded:Connect(_FH_NV(v901))
			return v890
		end

		local v387 = v381
		local v388 = v261
		local v389 = v363

		local function v390(...)
			local Keyboard = Enum.UserInputType.Keyboard
			if nil ~= Keyboard then
				return
			end
			local v908 = v109
			if not v908 then
				if v908:GetFocusedTextBox() then
					return
				end
				for _, v909 in ipairs(v389) do
					local key = v909.key
					if key and key == v909.key then
						task.spawn(v909.fire)
					end
				end
				return
			end
			bit32.rrotate(1441792, 24)
			local v910 = v109
			if not (Keyboard == Enum.Backspace or Keyboard == Enum.KeyCode.Delete) then
				if v387[Keyboard] then
					v910.refresh()
					return
				end
				if Keyboard == Enum.KeyCode.Escape then
				end
			end
			v910.refresh()
			local set4 = v388.set
			local cfgKey = v910.cfgKey
			local v911 = v910.key
			v911 = v911 and v910.key.Name or nil
			set4(cfgKey, v911)
		end

		UserInputService.InputBegan:Connect(_FH_NV(v390))
		local v391 = v364
		local v392 = v261
		local v393 = v380
		local v394 = v363

		local function v395(...)
			if not v113((nil).UserInputType) then
				return
			end
			local KeyCode = (nil).KeyCode
			if KeyCode == Enum.KeyCode.Unknown then
				return
			end
			local v912 = v110
			if v912 then
				if v112[KeyCode] then
					return
				end
				local v913 = v110
				v913.padKey = KeyCode
				v913.refresh()
				v392.set(v913.padCfgKey, KeyCode.Name)
				return
			end
			local v914 = v912()
			if not v914 then
				v914 = v111
			end
			if v914 then
				local v915 = v914

				local function v916(...)
					local v919 = v391[nil]
					if not v919 then
						return
					end
					local v920 = v919()
					if not v920 then
						local band = bit32.band
						local v921 = true
						v921 = v921 and 202 or 4
						band(v921, 3)
					end
					if v920 ~= v915 then
						return
					end
					if v915.padKey then
						v915.padKey = nil
						v392.set(v915.padCfgKey, nil)
						v915.refresh()
					else
						v115()
						v116()
						for v922, _ in pairs(v391) do
							v112[v922] = true
						end
						v915.refresh()
					end
				end

				task.delay(1.5, _FH_NV(v916))
			end
			if not v110 then
				local v917 = UserInputService
				if not v917:GetFocusedTextBox() then
					for _, v918 in ipairs(v917) do
						if v918.padKey and KeyCode == v918.padKey then
							task.spawn(v918.fire)
						end
					end
				end
			end
		end

		UserInputService.InputBegan:Connect(v395)
		local v396 = v364

		local function v397(...)
			if v113(nil) then
				return
			end
		end

		UserInputService.InputEnded:Connect(_FH_NV(v397))
		_FH_yield()
		local v398 = {}
		v118 = nil
		v119 = _FH_NV

		local function v399(...)
			return -(62 + nil)
		end

		v119 = v119(v399)
		v118 = v119
		v119 = nil
		local v400 = v398

		local function v401(...)
			local v923
			for v924, v925 in ipairs(v400) do
				local Create3 = v923.Create
				local shadow = v925.shadow
				local v926 = { Position = UDim2.new(0, 10, 1, v118(v924 - 1)) }
				local v927 = Create3(v923, shadow, nil, v926)
				v923 = v927.Play
				v923(v927)
			end
		end

		v119 = _FH_NV(v401)
		local v402 = {}
		local v403 = v84
		local v404 = v178
		local v405 = v63
		local v406 = v398

		v407 = function(...)
			local v928, v929, v930
			if not _guiReady then
				return
			end
			local v931 = tostring(nil)
			local tostring4 = tostring
			v928 = v928 and 1 or 0
			local v932 = v931 .. "|" .. tostring4(v928)
			local v933 = tick()
			local v934 = v402[v932]
			if v934 then
				v934 = v933 - v402[v932]
				if v934 < 0.5 then
					return
				end
			end
			v402[v932] = v933
			v934 = v934 and "Enabled" or "Disabled"
			if v929 then
				v930 = 255
				v929 = Color3.fromRGB(150, v930, 150)
			end
			if not v929 then
				v930 = 100
				v929 = Color3.fromRGB(255, v930, 100)
			end
			local new15 = TweenInfo.new
			v930 = v930 and 0.3 or 0.38
			local v935 = Enum.EasingStyle.Back
			new15(v930, v935, Enum.EasingDirection.Out)
			local new16 = TweenInfo.new
			v935 = v935 and 0.24 or 0.3
			local v936 = Enum.EasingStyle.Quad
			new16(v935, v936, Enum.EasingDirection.Out)
			local new17 = TweenInfo.new
			v936 = v936 and 0.22 or 0.28
			local v937 = new17(v936, Enum.EasingStyle.Quint, (nil).EasingDirection.In)
			local v938 = TweenInfo.new(2.2, Enum.EasingStyle.Linear)
			local new18 = TweenInfo.new
			local v939 = Enum.EasingStyle.Quad
			local v940 = new18(0.22, v939, Enum.EasingDirection.In)
			local new19 = TweenInfo.new
			v939 = v939 and 0.24 or 0.32
			local v941 = new19(v939, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			local Frame17 = Instance.new("Frame")
			UDim2.new(0, 208, 0, 52)
			UDim2.new(0, -232, 1, v118(0))
			local Frame18 = Instance.new("Frame")
			UDim2.new(0, 200, 0, 44)
			UDim2.new(0, 4, 0, 4)
			Frame18.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
			local UICorner2 = Instance.new("UICorner")
			UICorner2.CornerRadius = UDim.new(0, 10)
			UICorner2.Parent = Frame18
			local UIStroke2 = Instance.new("UIStroke")
			UIStroke2.Color = v405.c1
			UIStroke2.Thickness = 1
			UIStroke2.Transparency = 1
			UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke2.Parent = Frame18
			local ImageLabel2 = Instance.new("ImageLabel")
			ImageLabel2.Size = UDim2.new(1, 24, 1, 24)
			ImageLabel2.Position = UDim2.new(0, -12, 0, -12)
			ImageLabel2.BackgroundTransparency = 1
			ImageLabel2.Image = "rbxassetid://5028857084"
			ImageLabel2.ImageColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel2.ImageTransparency = 1
			ImageLabel2.ScaleType = Enum.ScaleType.Slice
			ImageLabel2.SliceCenter = Rect.new(24, 24, 276, 276)
			ImageLabel2.ZIndex = 199
			ImageLabel2.Parent = Frame18
			local Frame19 = Instance.new("Frame")
			Frame19.Size = UDim2.new(0, 3, 0, 28)
			Frame19.Position = UDim2.new(0, 9, 0.5, -14)
			Frame19.BackgroundColor3 = v929
			Frame19.BackgroundTransparency = 0.15
			Frame19.BorderSizePixel = 0
			Frame19.ZIndex = 201
			Frame19.Parent = Frame18
			local UICorner3 = Instance.new("UICorner")
			UICorner3.CornerRadius = UDim.new(1, 0)
			UICorner3.Parent = Frame19
			local TextLabel3 = Instance.new("TextLabel")
			TextLabel3.Size = UDim2.new(1, -24, 0, 15)
			TextLabel3.Position = UDim2.new(0, 19, 0, 7)
			TextLabel3.BackgroundTransparency = 1
			TextLabel3.Text = nil
			TextLabel3.TextSize = 11
			TextLabel3.Font = Enum.Font.GothamBold
			TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel3.TextTruncate = Enum.TextTruncate.AtEnd
			TextLabel3.TextTransparency = 1
			TextLabel3.ZIndex = 201
			TextLabel3.Parent = Frame18
			local TextLabel4 = Instance.new("TextLabel")
			UDim2.new(1, -24, 0, 11)
			TextLabel4.Position = UDim2.new(0, 19, 0, 23)
			TextLabel4.BackgroundTransparency = 1
			TextLabel4.Text = v934
			TextLabel4.TextSize = 10
			TextLabel4.Font = Enum.Font.Gotham
			TextLabel4.TextColor3 = v929
			TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel4.TextTransparency = 1
			TextLabel4.ZIndex = 201
			TextLabel4.Parent = Frame18
			local Frame20 = Instance.new("Frame")
			Frame20.Size = UDim2.new(1, -16, 0, 3)
			Frame20.Position = UDim2.new(0, 8, 1, -7)
			Frame20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame20.BackgroundTransparency = 1
			Frame20.BorderSizePixel = 0
			Frame20.ZIndex = 201
			Frame20.Parent = Frame18
			local UICorner4 = Instance.new("UICorner")
			UICorner4.CornerRadius = UDim.new(1, 0)
			UICorner4.Parent = Frame20
			local Frame21 = Instance.new("Frame")
			Frame21.Size = UDim2.new(1, 0, 1, 0)
			Frame21.BackgroundColor3 = v405.c1
			Frame21.BackgroundTransparency = 1
			Frame21.BorderSizePixel = 0
			Frame21.ZIndex = 202
			Frame21.Parent = Frame20
			local UICorner5 = Instance.new("UICorner")
			UICorner5.CornerRadius = UDim.new(1, 0)
			UICorner5.Parent = Frame21
			local UIGradient4 = Instance.new("UIGradient")
			UIGradient4.Color = ColorSequence.new(v405.c1, 0)
			UIGradient4.Parent = Frame21
			local v942 = { shadow = Frame17 }
			table.insert(0, 1, v942)
			local v943 = v119
			v943(v941)
			local Create4 = v943.Create
			local v944 = { Position = UDim2.new(0, 10, 1, v118(0)) }
			local v945 = Create4(v943, Frame17, v942, v944)
			local Play = v945.Play
			Play(v945)
			local Create5 = Play.Create
			local v946 = { BackgroundTransparency = 0 }
			local v947 = Create5(Play, Frame18, v942, v946)
			local Play2 = v947.Play
			Play2(v947)
			local Create6 = Play2.Create
			local v948 = { Transparency = 0.15 }
			local v949 = Create6(Play2, UIStroke2, v942, v948)
			local Play3 = v949.Play
			Play3(v949)
			local Create7 = Play3.Create
			local v950 = { TextTransparency = 0 }
			local v951 = Create7(Play3, TextLabel3, v942, v950)
			local Play4 = v951.Play
			Play4(v951)
			local Create8 = Play4.Create
			local v952 = { TextTransparency = 0 }
			local v953 = Create8(Play4, TextLabel4, v942, v952)
			local Play5 = v953.Play
			Play5(v953)
			local Create9 = Play5.Create
			local v954 = { BackgroundTransparency = 0.92 }
			local v955 = Create9(Play5, Frame20, v942, v954)
			local Play6 = v955.Play
			Play6(v955)
			local Create10 = Play6.Create
			local v956 = { BackgroundTransparency = 0 }
			Create10(Play6, Frame21, v942, v956):Play()

			local function v957()
				local Create11 = TweenService.Create
				UDim2.new(0, 0, 1, 0)
				Create11:Play()
			end

			task.delay(0.1, _FH_NV(v957))

			local function v958(...)
				local v959, v960, v961, v962
				v962, v961, v960 = ipairs(v406)
				local v963 = v961
				local _leave12 = false
				while true do
					local v964
					v960, v964 = v962(v961, v960)
					if v960 == nil then
						break
					else
						if v964 == nil then
							v959 = v406
							table.remove(v959, v960)
							_leave12 = true
							break
						end
						v963 = v960
					end
				end
				if not _leave12 then
					v960 = v963
				end
				v119(v960)
				local Create12 = v960.Create
				local v965 = Frame17
				local v966 = { Position = UDim2.new }
				local v967 = Create12(v960, v965, v959, v966)
				local Play7 = v967.Play
				Play7(v967)
				local Create13 = Play7:Create(v965, v959, {})
				local Play8 = Create13.Play
				Play8(Create13)
				local v968 = TextLabel3
				local Create14 = Play8:Create(v968, v959, {})
				local Play9 = Create14.Play
				Play9(Create14)
				local Create15 = Play9:Create(v968, v959, {})
				local Play10 = Create15.Play
				Play10(Create15)
				local Create16 = Play10:Create(v968, v959, {})
				local Play11 = Create16.Play
				Play11(Create16)
				local Create17 = Play11:Create(TextLabel4, v959, {})
				Create17:Play()

				local function v969()
					local function v970()
						Frame17:Destroy()
					end

					pcall(_FH_NV(v970))
				end

				Create17.Completed:Connect(v969)
			end

			task.delay(2.35, v958)
		end

		_FH_yield()
		local v408 = v350
		local v409 = v171
		local v410 = v49
		local v411 = v147
		local v412 = v150
		local v413 = v63
		local v414 = v84
		local v415 = v61
		local v416 = v261
		local v417 = v407
		local v418 = v386

		local function v419(...)
			local v971 = v408
			;(32)(nil, nil, 11, v410.Text, Enum.Font.GothamBold)
			UDim2.new(1, -52, 0, 14)
			UDim2.new(0, 10, 0, 9)
			local Frame22 = Instance.new("Frame")
			local v972 = 16
			Frame22.Size = UDim2.new(0, 30, 0, v972)
			v972 = -8
			UDim2.new(1, -38, 0.5, v972)
			v65(1, "Soft")
			local v973 = v411
			v973(1, 8)
			v972 = 0
			local v974 = v973(1, v410.Line, 1, v972)
			local Frame23 = Instance.new("Frame")
			v972 = 0
			UDim2.new(1, v972, 1, 0)
			v972 = 8
			v972 = 1
			v67(Frame23, v972)
			local Frame24 = Instance.new("Frame")
			v972 = 0
			Frame24.Size = UDim2.new(v972, 12, 0, 12)
			v972 = 0
			Frame24.Position = UDim2.new(v972, 2, 0.5, -6)
			Frame24.BackgroundColor3 = v410.TextMute
			Frame24.BorderSizePixel = 0
			Frame24.ZIndex = 7
			Frame24.Parent = Frame22
			v972 = Frame24
			v411(v972, 6)
			v972 = "TextButton"
			local v975 = Instance.new(v972)
			v972 = UDim2
			v972 = v972.new
			v972 = v972(1, 0, 1, 0)
			v975.Size = v972
			v975.BackgroundTransparency = 1
			v975.Text = ""
			v975.AutoButtonColor = false
			v975.ZIndex = 8
			v975.Parent = v971
			v972 = false
			local v976 = 1
			local v977, v978

			local function v979(...)
				local v984 = nil
				if v984 then
					v984 = true
				end
				local v985 = v972
				local v986
				if v985 then
					if v985 then
						v986 = 0
						UDim2.new(v986, 16, 0.5, -6)
						Frame23.BackgroundTransparency = 0
					else
						local v987 = v68
						UDim2.new(0, 16, 0.5, -6)
						v987(nil, nil, {})
						v986 = Frame23
						v68(v986, nil, {})
						v68(v986, nil, {})
					end
				elseif v985 then
					v986 = 0
					UDim2.new(v986, 2, 0.5, -6)
					Frame23.BackgroundTransparency = 1
				else
					local v988 = v68
					UDim2.new(0, 2, 0.5, -6)
					v988(nil, nil, {})
					v986 = Frame23
					v68(v986, nil, {})
					v68(v986, nil, {})
				end
				v416.set(v986, v972)
				pcall(v986, v977, v972)
				if v978 then
					task.spawn(v978, v972)
				end
			end

			local function v980()
				v979(not v972)
			end

			v975.Activated:Connect(v980)
			if v416.get(1, false) == true then
				local function v981()
					local _ = 14539 + bit32.countlz((bit32.lrotate(3, 27))) + -14333
					pcall(v979, true, true)
				end

				task.defer(v981)
			end
			local function v982(...)
			end
			v83(1, v982)
			local v983 = {}

			function v983.set(...)
				local v989 = nil
				local _ = -8032 + (bit32.rrotate(
					string.unpack("<i8", "\243\0\0\0\0\0\0\0"),
					26
				) - 54) + -7395
				v989 = v989 and true or false
				local v990 = v972
				if v989 ~= v990 then
					v989(v990)
				end
			end

			function v983.get()
				return v972
			end

			v983.card = v971
			v983.btn = v975
			return v983
		end

		v420 = _FH_NV(v419)
		local v421 = v350
		local v422 = v171
		local v423 = v49
		local v424 = v50
		local v425 = v61
		local v426 = v386

		local function v427(...)
			local v991, v992
			if not v991 then
				if v991 then
					v991 = 44
				end
			end
			if not v991 then
				v991 = 32
			end
			local v993 = v421(v992, nil)
			v992 = v992 and 6 or v991 / 2 - 7
			;(nil)(
				nil,
				nil,
				11,
				v423.Text,
				Enum.Font.GothamBold,
				Enum.TextXAlignment.Center
			)
			UDim2.new(1, 0, 0, 14)
			local v994 = UDim2.new(0, 0, 0, v992)
			if nil then
				v994(
					0,
					0,
					9,
					v423.TextDim,
					Enum.Font.Gotham,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, 0, 0, 11)
				UDim2.new(0, 0, 0, v992 + 14)
			end
			local TextButton3 = Instance.new("TextButton")
			UDim2.new(1, 0, 1, 0)
			local v995 = nil

			local function v996(...)
				(nil)()
			end

			local Activated2 = TextButton3.Activated
			local Connect3 = Activated2.Connect
			Connect3(Activated2, v996)
			Connect3(Activated2, v996, 0, v996)
		end

		v428 = _FH_NV(v427)
		_FH_yield()
		local v429 = _SliderReg
		if not v429 then
			v429 = {}
		end
		v120 = nil

		local function v430(...)
			local v997 = v120
			if not v997 then
				return
			end
			local MouseMovement = Enum.UserInputType.MouseMovement
			if not (nil == MouseMovement or nil == Enum.UserInputType.Touch) then
				return
			end
			v997.setFromX(MouseMovement.X)
		end

		UserInputService.InputChanged:Connect(_FH_NV(v430))
		local v431 = v350
		local v432 = v171
		local v433 = v49
		local v434 = v147
		local v435 = v150
		local v436 = v261
		local v437 = v429
		local v438 = v50

		local function v439(...)
			local v998 = 42
			local v999 = v431(nil, v998)
			local v1000, v1001
			if not v998 then
				v998 = 1
				v1000 = nil
				v1001 = nil
			end
			local max4 = math.max
			local ceil = math.ceil
			local v1002 = math.log(math.max(nil, 1e-09))
			local v1003 = math.log(10)
			local v1004 = "%." .. max4(0, ceil(-v1002 / v1003)) .. "f"
			ceil(v999, v1003, 11, v433.Text, Enum.Font.GothamBold)
			UDim2.new(1, -52, 0, 12)
			UDim2.new(0, 10, 0, 6)
			local TextBox = Instance.new("TextBox")
			TextBox.Size = UDim2.new(0, 40, 0, 16)
			TextBox.Position = UDim2.new(1, -48, 0, 4)
			TextBox.BackgroundColor3 = v433.Soft
			local Soft = "Soft"
			v65(TextBox, Soft)
			TextBox.BorderSizePixel = 0
			TextBox.Text = string.format(v1004, Soft)
			TextBox.Font = Enum.Font.GothamBold
			TextBox.TextSize = 10
			TextBox.TextColor3 = v433.Text
			TextBox.TextXAlignment = Enum.TextXAlignment.Center
			TextBox.ClearTextOnFocus = false
			TextBox.ZIndex = 6
			TextBox.Parent = v999
			v434(TextBox, 4)
			local v1005 = v69(TextBox, 1, 0, 0)
			local Frame25 = Instance.new("Frame")
			UDim2.new(1, -20, 0, 4)
			UDim2.new(0, 10, 0, 28)
			v65(Frame25, "Soft")
			v434(Frame25, 2)
			local v1006 = (v1000 - nil) / math.max(1, nil - nil)
			local Frame26 = Instance.new("Frame")
			v1001 = 1
			Frame26.Size = UDim2.new(v1006, 0, v1001, 0)
			Frame26.BorderSizePixel = 0
			Frame26.ZIndex = 6
			Frame26.Parent = Frame25
			v434(Frame26, 2)
			v67(Frame26, 1)
			local Frame27 = Instance.new("Frame")
			v1001 = 12
			Frame27.Size = UDim2.new(0, v1001, 0, 12)
			v1001 = 0.5
			Frame27.AnchorPoint = Vector2.new(0.5, v1001)
			v1001 = 0
			Frame27.Position = UDim2.new(v1006, v1001, 0.5, 0)
			Frame27.BackgroundColor3 = v433.White
			Frame27.BorderSizePixel = 0
			Frame27.ZIndex = 7
			Frame27.Parent = Frame25
			local v1007 = v434
			v1001 = 6
			v1007(Frame27, v1001)
			v1001 = v433.White
			v1007(Frame27, v1001, 1.4, 0)
			local TextButton4 = Instance.new("TextButton")
			v1001 = 1
			UDim2.new(v1001, 16, 0, 22)
			v1001 = 0
			UDim2.new(v1001, -8, 0.5, -11)
			local v1008 = "slider:" .. nil
			v1001 = nil
			local v1009 = v998
			local v1010, v1011, v1012

			local function v1013(...)
				local tonumber3 = tonumber
				local format = string.format
				local v1034 = v1004
				local clamp7 = math.clamp
				local v1035 = nil / nil + 0.5
				local v1036 = math.floor(v1035) * v1035
				format(v1034, clamp7(v1036, v1035, nil))
				tonumber3()
				local v1037 = (v1000 - format) / math.max(1e-09, clamp7 - v1036)
				UDim2.new(v1037, 0, 1, 0)
				UDim2.new(v1037, 0, 0.5, 0)
				string.format(v1004, v1000)
				local set5 = v436.set
				local v1038 = v1000
				set5(v1008, v1038)
				if set5 then
					set5(v1000)
				end
				if v437[v1008] then
					for _, v1039 in ipairs(v1038) do
						if v1039 ~= v1001 then
							v1039.setVisualOnly(v1000)
						end
					end
				end
			end

			local v1014 = {}
			function v1014.setVisualOnly()
			end
			v1001 = v1014
			local v1015 = v437[v1008]
			if not v1015 then
				v1015 = {}
			end
			v437[v1008] = v1015
			table.insert(v437[v1008], v1001)

			local function v1016()
				local _ = 22081 + (math.modf(3.141592653589793) - string.len("\210") - 230) + -21644
				;({}).Transparency = 0
			end

			TextBox.Focused:Connect(v1016)
			local v1017 = nil

			local function v1018(...)
				local _ = -83717 + bit32.lshift(
					bit32.bor((string.byte("/\211\211\243\195", 1, 5))),
					11
				) + -12538
				local v1040 = { Transparency = 0.3 }
				v68(nil, nil, v1040)
				tonumber(TextBox.Text)
				if nil then
					v1013(nil, true)
				end
				local v1041 = string.format(nil, v1000)
				if v1041 then
					v1041(v1000)
				end
				pcall(v436.flush)
			end

			TextBox.FocusLost:Connect(v1018)
			local v1019, v1020

			local function v1021()
				local clamp8 = math.clamp
				local v1042 = Frame25.AbsolutePosition.X
				local max5 = math.max
				local v1043 = Frame25.AbsoluteSize.X
				local v1044 = v1042 / max5(1, v1043)
				v1044(0 + (1 - v1043) * clamp8(v1044, 0, 1))
			end

			local v1022 = { setFromX = v1021 }

			local function v1023(...)
				local MouseButton1 = Enum.UserInputType.MouseButton1
				if nil == MouseButton1 or nil == Enum.UserInputType.Touch then
					(nil)(MouseButton1.X)
					local v1045 = v68
					local v1046 = Frame27
					UDim2.new(0, 14, 0, 14)
					v1045(v1046, nil, {})
				end
			end

			TextButton4.InputBegan:Connect(v1023)
			local v1024 = nil

			local function v1025(...)
				local MouseButton12 = Enum.UserInputType.MouseButton1
				if nil == MouseButton12 or nil == Enum.UserInputType.Touch then
					local v1047 = v68
					local v1048 = v438
					UDim2.new(0, 12, 0, 12)
					v1047(MouseButton12, v1048, {})
					if v1047 then
						v1047(v1000)
					end
					pcall(v436.flush)
				end
			end

			TextButton4.InputEnded:Connect(v1025)
			local v1026, v1027

			local function v1028(...)
				local v1049 = nil
				local pcall12 = pcall
				local v1050 = v1013
				local get2 = v436.get
				if not v1049 then
					v1049 = v1027
				end
				local _ = 19328 + (string.unpack(">i8", "\0\0\0\0\0\0\0C") - string.len("") + 124) + -19434
				pcall12(v1050, get2(nil, v1049))
			end

			task.defer(v1028)
			if nil then
				local v1029 = nil

				local function v1030()
					while v1000 ~= nil do
						bit32.bnot(318)
					end
				end

				task.defer(v1030)
			end
			local v1031 = nil

			local function v1032(...)
				if tonumber(nil) and pcall then
				end
			end

			v83(v1008, v1032)
			local v1033 = { card = v999 }
			function v1033.set()
			end
			return v1033
		end

		v440 = _FH_NV(v439)
		_FH_yield()
		local v441 = v350
		local v442 = v171
		local v443 = v49
		local v444 = v147
		local v445 = v150
		local v446 = v152
		local v447 = v50
		local v448 = v61
		local v449 = v261

		local function v450(...)
			local v1051 = v441(nil, 32)
			;(nil)(32, nil, 11, v443.Text, Enum.Font.GothamBold)
			UDim2.new(1, -96, 1, 0)
			UDim2.new(0, 10, 0, 0)
			Instance.new("Frame")
			UDim2.new(0, 84, 0, 20)
			UDim2.new(1, -92, 0.5, -10)
			v65(1, "Soft")
			v444(1, 4)
			local v1052 = v69
			local v1053 = 1
			v1052(1, v1053, 0.3, 0)
			if not v1053 then
				v1053 = "Select"
			end
			local v1054 = v1052(1, v1053, 9, v443.Text, Enum.Font.GothamMedium)
			UDim2.new(1, -18, 1, 0)
			UDim2.new(0, 8, 0, 0)
			local v1055 = Enum.TextYAlignment.Center(
				0,
				"v",
				9,
				v443.Text,
				Enum.Font.GothamBold,
				Enum.TextXAlignment.Center
			)
			UDim2.new(0, 14, 1, 0)
			UDim2.new(1, -16, 0, 0)
			local Frame28 = Instance.new("Frame")
			UDim2.new(1, -20, 0, 0)
			UDim2.new(0, 10, 0, 30)
			v65(0, "BgDeep")
			local v1056 = v444
			v1056(0, 4)
			v1056(0, v443.Line, 1, 0.2)
			Instance.new("UIListLayout")
			UDim.new(0, 2)(0, 4, 4, 4, 4)
			local v1057, v1058, v1059
			v1059, v1058, v1057 = ipairs(4)
			local v1060 = false
			while true do
				local v1061
				v1057, v1061 = v1059(v1058, v1057)
				if v1057 == nil then
					break
				else
					local TextButton5 = Instance.new("TextButton")
					TextButton5.Size = UDim2.new(1, 0, 0, 18)
					TextButton5.BackgroundTransparency = 1
					TextButton5.Text = v1061
					TextButton5.TextSize = 9
					TextButton5.Font = Enum.Font.GothamMedium
					TextButton5.TextColor3 = v443.TextDim
					TextButton5.AutoButtonColor = false
					TextButton5.ZIndex = 7
					TextButton5.Parent = Frame28
					v444(TextButton5, 3)
					local v1062 = TextButton5

					local function v1063(...)
						local v1080 = nil
						if not v1080 then
							v1080 = 136
						end
						local v1081
						v1081 = not (v1080 == 288)
						v1081 = v1081 and 4 or 175
						local v1082
						v1082.TextColor3 = v443.Text
					end

					TextButton5.MouseEnter:Connect(v1063)
					local v1064 = TextButton5

					local function v1065()
						local v1083
						v1083.TextColor3 = v443.TextDim
					end

					TextButton5.MouseLeave:Connect(v1065)
					local v1066 = v1061
					local v1067, v1068

					local function v1069()
						({}).Size = UDim2.new(1, -8, 0, 32)
						;({}).Size = UDim2.new(1, -20, 0, 0)
						if v449.set then
						end
					end

					TextButton5.Activated:Connect(v1069)
				end
			end
			local TextButton6 = Instance.new("TextButton")
			UDim2.new(0, 84, 0, 20)
			UDim2.new(1, -92, 0, 6)
			local Activated3 = TextButton6.Activated
			local v1070 = nil

			local function v1071(...)
				local v1084 = v1060
				if v1084 then
					local v1085 = v68
					local v1086 = v448
					local v1087 = 32 + (8 + #v1084 * 20) + 2
					UDim2.new(1, -8, 0, v1087)
					v1085(nil, v1086, {})
					local v1088 = v68
					local v1089 = v448
					UDim2.new(1, -20, 0, v1087)
					v1088(nil, v1089, {})
				else
					local v1090 = v68
					local v1091 = v448
					local v1092 = { Size = UDim2.new(1, -8, 0, 32) }
					v1090(nil, v1091, v1092)
					local v1093 = v68
					local v1094 = v448
					local v1095 = { Size = UDim2.new(1, -20, 0, 0) }
					v1093(nil, v1094, v1095)
				end
			end

			Activated3:Connect(v1071)
			local v1072 = v449.get(Activated3, nil)
			if v1072 then
				local v1073 = false
				for _, v1074 in ipairs(6) do
					if v1074 == v1072 then
						v1073 = true
						break
					end
				end
				if v1073 and nil then
					local v1075 = nil

					local function v1076()
						while true do
							string.len("\1")
						end
					end

					task.defer(v1076)
				end
			end
			local v1077, v1078
			local function v1079(...)
			end
			v83(v1072, v1079)
		end

		v451 = _FH_NV(v450)
		local v452 = v350
		local v453 = v171
		local v454 = v49
		local v455 = v147
		local v456 = v152
		local v457 = v50
		local v458 = v261

		local function v459(...)
			local v1096 = nil
			v452(nil, 32)
			;(nil)(32, nil, 11, v454.Text, Enum.Font.GothamBold)
			UDim2.new(1, -120, 1, 0)
			UDim2.new(0, 10, 0, 0)
			local TextBox2 = Instance.new("TextBox")
			UDim2.new(0, 108, 0, 20)
			UDim2.new(1, -116, 0.5, -10)
			v65(1, "Soft")
			if not v1096 then
				v1096 = ""
			end
			local v1097 = v455
			v1097(1, 4)
			v1097(1, 0, 0, 8, 8)
			local v1098 = v69(1, 1, 0.3, 0)

			local function v1099()
				local _ = 26376 + (bit32.rshift(string.byte("\208\236A", 1, 1), 16) - 18) + -26277
				;({}).Transparency = 0
			end

			TextBox2.Focused:Connect(v1099)
			local FocusLost = TextBox2.FocusLost
			local v1100 = 1
			local v1101 = nil

			local function v1102(...)
				local v1106 = { Transparency = 0.3 }
				v68(nil, nil, v1106)
				local set6 = v458.set
				local v1107 = v1100
				set6(v1107, TextBox2.Text)
				bit32.rrotate(-188, 11)
				if set6 then
					task.spawn(v1107, TextBox2.Text)
				end
			end

			FocusLost:Connect(v1102)
			v458.get(FocusLost, nil)
			task.spawn(nil, TextBox2.Text)
			local v1103 = 1
			local v1104 = nil
			local function v1105()
			end
			v83(nil, v1105)
		end

		v460 = _FH_NV(v459)
		local v461 = v178
		local v462 = v84
		local v463 = v63

		local function v464()
			local v1108 = {}

			local function v1109(...)
				local v1112 = nil
				v1112 = v1112 and true or false
				local _ = 8593 + bit32.bor(bit32.bxor(421, 95), 460) + -8993
				v1108.enabled = v1112
				if v1108.enabled then
				end
			end

			_FH_NV(v1109)

			local function v1110(...)
				local v1113 = nil
				v1113 = v1113 and true or false
				v1108.lineEnabled = v1113
				if v1108.lineEnabled then
				end
			end

			_FH_NV(v1110)
			local spawn2 = task.spawn

			local function v1111()
				local function v1114(...)
					local v1115, v1116
					if not cloneref then
						v1115 = function(...)
							return nil
						end

						_FH_NV(v1115)
					end
					local game4 = game
					local GetService4 = game4.GetService
					local v1117 = v1115(GetService4(game4, "ReplicatedStorage"))
					local game5 = game
					local GetService5 = game5.GetService
					local v1118 = GetService4(GetService5(game5, "Workspace"))
					local v1119 = GetService5(game:GetService("Players"))
					local v1120 = v1119.LocalPlayer
					if not v1120 then
						v1120 = v1119.PlayerAdded:Wait()
					end
					local Plots = v1118:WaitForChild("Plots", 15)
					local Packages = v1117:WaitForChild("Packages", 15)
					if not (Plots and Packages) then
						return
					end
					local GetChildren2 = Plots:GetChildren()

					local function v1121()
						local v1195
						v1195 = not not true
						if v1195 then
							v1195 = 26
						end
						while true do
							if not v1195 then
								v1195 = 430
							end
							v1195 = 26
						end
					end

					Plots.ChildAdded:Connect(_FH_NV(v1121))

					local function v1122()
						string.unpack("<i8", "\16\1\0\0\0\0\0\0")
					end

					Plots.ChildRemoved:Connect(_FH_NV(v1122))

					local function v1123(...)
						return nil
					end

					_FH_NV(v1123)

					local function v1124()
						return nil
					end

					_FH_NV(v1124)

					local function v1125(...)
						local v1196, v1197, v1198
						v1198, v1197, v1196 = ipairs({})
						local v1199 = nil
						while true do
							local v1200
							v1196, v1200 = v1198(v1197, v1196)
							if v1196 == nil then
								break
							else
								if not v1199 then
									return nil
								end
								local v1201 = v1200

								local function v1202(...)
									bit32.bxor(177, 179, 182)
									return v1199:WaitForChild(nil, 10)
								end

								pcall(_FH_NV(v1202))
								if not v1202 then
									v1202 = nil
								end
								v1199 = v1202
							end
						end
						return v1198
					end

					local Shared = "Shared"
					local v1126 = v1124(v1125(nil, Shared, "Animals"))
					local v1127 = "Datas"
					local v1128 = v1125(v1125(Shared, v1127, "Animals"))
					local v1129 = "NumberUtils"
					local v1130 = v1125(v1125(v1127, "Utils", v1129))
					if not v1126 then
						v1126 = {}

						local function v1131()
							while true do
							end
						end

						v1127 = _FH_NV(v1131)
					end
					if not v1128 then
						local setmetatable3 = setmetatable
						v1127 = {}
						local v1132 = {}

						v1116 = function(...)
							return nil
						end

						v1129 = _FH_NV(v1116)
						v1132.__index = v1129
						v1128 = setmetatable3(v1127, v1132)
					end
					local v1133 = nil
					local v1134 = v1126
					local v1135 = v1128
					local v1136 = v1130
					local v1137 = v1127
					local v1138 = v1129
					local v1139 = v1116
					local v1140, v1141, v1142, v1143, v1144
					if not v1130 then
						local function v1145(...)
							if type(nil) ~= "number" then
								return "0"
							end
							if 1000000000000 <= nil then
								return string.format("%.1fT", nil / 1000000000000)
							end
							if 1000000000 <= nil then
								return string.format("%.1fB", nil / 1000000000)
							end
							if 1000000 <= nil then
								return string.format("%.1fM", nil / 1000000)
							end
							if 1000 <= nil then
								return string.format("%.1fK", nil / 1000)
							end
							return tostring(math.floor(nil))
						end

						v1133 = nil
						v1134 = v1126
						v1135 = v1128
						v1136 = {}
						v1137 = v1127(v1145)
						v1138 = v1129
						v1139 = v1116
						v1140 = nil
						v1141 = nil
						v1142 = nil
						v1143 = nil
						v1144 = nil
					end

					v1137 = function()
						local Synchronizer = Packages:WaitForChild("Synchronizer", 15)
						if not Synchronizer then
							return {}
						end
						local _ = -2147463496 + bit32.lshift(
							bit32.rrotate(string.unpack("<i8", "\212\0\0\0\0\0\0\0"), 7),
							4
						) + -19983
						Synchronizer:FindFirstChild("Channel")
						Synchronizer:FindFirstChild("CommunicationRoute")
						Synchronizer:FindFirstChild("RequestData")
						return {}
					end

					local v1146 = v1137
					v1137 = nil
					local v1147 = _FH_NV(v1146)()

					v1138 = function(...)
						local v1203 = nil
						local requestData = v1147.requestData
						if requestData then
							local Parent = requestData.Parent
							if Parent then
								local _ = 9820 + (bit32.bxor((string.unpack(">i8", "\0\0\0\0\0\0\1_"))) - 448) + -9722
								return Parent
							end
						end
						local _leave14 = false
						local folder = v1147.folder
						if folder then
							v1203 = folder.Parent
							if v1203 then
								_leave14 = true
							end
						end
						if not _leave14 then
							v1203 = v1203:FindFirstChild("Synchronizer")
							v1147.folder = folder
						end
						v1203 = v1203 and folder:FindFirstChild("RequestData") or nil
						v1147.requestData = requestData
						return v1203
					end

					v1137 = _FH_NV(v1138)
					v1138 = _FH_NV
					local v1148 = v1120

					v1139 = function(...)
						local v1204 = nil
						local Character = v1148.Character
						if v1204 then
							v1204 = Character:FindFirstChild("HumanoidRootPart")
							if not v1204 then
								v1204 = v1204(Character, "UpperTorso")
							end
						end
						return v1204
					end

					v1138 = v1138(v1139)
					local v1149 = v1138
					v1138 = nil
					v1139 = _FH_NV

					v1140 = function(...)
						local v1205 = nil
						local _ = 10225 + bit32.countrz((bit32.lrotate(116, 24))) + -10250
						local v1206 = "PlotSign"
						local v1207 = (nil)(v1205, v1206)
						if v1205 then
							v1205 = v1207:FindFirstChild("SurfaceGui")
							v1206 = v1207
						end
						if v1205 then
							v1206 = v1207.SurfaceGui
							v1205 = v1206:FindFirstChild("Frame")
						end
						if v1206 then
							v1206 = v1205:FindFirstChild("TextLabel")
						end
						if v1206 and v1206.Text ~= "Empty Base" then
							return v1206.Text:gsub("'s [Bb]ase$", ""):gsub("%s+$", "")
						end
						return nil
					end

					v1139 = v1139(v1140)
					v1138 = v1139
					v1139 = nil
					v1140 = _FH_NV
					local v1150 = v1120

					v1141 = function(...)
						local v1208 = nil
						local DisplayName = v1150.DisplayName
						local v1209, v1210, v1211
						v1211, v1210, v1209 = ipairs(v1133())
						while true do
							local _
							v1209, _ = v1211(v1210, v1209)
							if v1209 == nil then
								break
							else
								local v1212 = v1138(v1208)
								if v1212 and v1212 ~= DisplayName then
									v1208 = table.insert
									v1208(nil, nil)
								end
							end
						end
						return v1211
					end

					v1140 = v1140(v1141)
					v1139 = v1140
					v1140 = nil
					v1141 = _FH_NV

					local function v1151(...)
						local v1213 = nil
						local v1214 = "Base"
						local v1215 = (nil)(v1213, v1214)
						if v1215 then
							v1214 = "Spawn"
							local v1216 = v1215
							v1215 = v1215:FindFirstChild(v1214)
							v1213 = v1216
						end
						if v1213 then
							v1213 = v1215:FindFirstChild("PromptAttachment")
							v1214 = v1215
						end
						if v1214 then
							v1214 = v1213:FindFirstChildWhichIsA("ProximityPrompt")
						end
						local v1217
						if v1214 then
							v1217 = v1214.ActionText == "Steal"
						else
							v1217 = v1214
						end
						v1217 = v1217 and v1214 or nil
						return v1217
					end

					v1141 = v1141(v1151)
					v1140 = v1141
					v1141 = nil

					local function v1152(...)
						local v1218, v1219
						if v1218 then
							v1218 = (nil):FindFirstChild("AnimalPodiums")
							v1219 = nil
						end
						if v1219 then
							v1219 = not true
						end
						if v1219 then
							v1219 = v1218:FindFirstChild(tostring(nil))
						end
						if not v1219 then
							return nil, nil, nil
						end
						v1219:FindFirstChild("Base")
						return v1140(v1219), v1219, v1219
					end

					v1141 = _FH_NV(v1152)

					local function v1153()
						bit32.bxor(20, 30)
						return nil
					end

					local v1154 = _FH_NV(v1153)
					local v1155 = {}
					local v1156 = {}

					local function v1157(...)
						local _FH_AutoGrab = _G._FH_AutoGrab
						local v1220
						if _FH_AutoGrab then
							local rrotate = bit32.rrotate
							v1220 = 441 <= string.unpack(">i8", "\0\0\0\0\0\0\0\238")
							v1220 = v1220 and string.len("\135LE") or 4
							local _ = 14681 + rrotate(
								v1220,
								(string.unpack(">i8", "\0\0\0\0\0\0\0\27"))
							) + -14746
							if _FH_AutoGrab.plotCaches then
								local v1221 = _FH_AutoGrab.plotCaches[nil]
								local v1222 = typeof(nil)
								if v1222 == "table" and typeof(v1221.AnimalList) == "table" then
									v1155[nil] = v1221
									return v1222
								end
							end
						end
						local v1223 = v1137()
						if not v1223 then
							return v1155[nil]
						end
						if v1155[nil] and v1156[nil] and tick() - v1156[nil] < 2 then
							return v1155[nil]
						end
						local v1224 = nil

						local function v1225(...)
							return v1223:InvokeServer(nil)
						end

						local v1226, v1227
						v1227, v1226 = pcall(_FH_NV(v1225))
						if v1227 then
							local v1228 = typeof(nil)
							if v1228 == "table" then
								v1155[nil] = v1226
								return v1228
							end
						end
						return v1155[nil]
					end

					local function v1158()
						local v1229, v1230, v1231
						v1231, v1230, v1229 = ipairs(v1139())
						local v1232 = v1230
						while true do
							local v1233
							v1229, v1233 = v1231(v1230, v1229)
							if v1229 == nil then
								break
							else
								local v1234 = v1233
								local v1235 = {}

								local function v1236(...)
									local v1238 = nil
									v1157(v1234.Name)
									if typeof(nil) ~= "table" then
										return
									end
									local v1239, v1240, v1241
									v1241, v1240, v1239 = pairs(nil)
									local v1242, v1243, v1244
									while true do
										local v1245
										v1239, v1245 = v1241(v1240, v1239)
										if v1239 == nil then
											break
										elseif typeof(v1238) == "table" then
											v1238 = v1245.Index
											if v1238 then
												local v1246, v1247
												v1247, v1238, v1246 = v1141(v1238, v1239)
												if v1247 and v1247.Parent then
													local v1248 = v1135[v1245.Index]
													if v1248 then
														v1244 = v1248.DisplayName
													else
														v1244 = v1248
													end
													if not v1244 then
														v1244 = tostring(v1245.Index)
													end
													local v1249 = v1134
													local GetGeneration = v1249.GetGeneration
													local Index = v1245.Index
													local Mutation = v1245.Mutation
													local v1250 = GetGeneration(v1249, Index, Mutation, v1245.Traits, nil)
													local v1251 = "$" ..
														v1136:ToString(Mutation) .. "/s"
													if v1248 then
														local v1252 = v1248.Rarity
														if not v1252 then
															v1252 = v1248.Tier
														end
														if v1252 then
															v1248 = v1252
														else
															v1248 = v1248.Type
														end
													end
													local _leave15 = false
													local typeof2 = typeof
													local v1253 = v1245.Traits
													if typeof2(v1253) == "table" then
														local v1254, v1255
														v1255, v1254, v1253 = pairs(v1245.Traits)
														local v1256 = v1254
														while true do
															local v1257
															v1253, v1257 = v1255(v1254, v1253)
															if v1253 == nil then
																break
															else
																if tostring(v1257):lower() == "og" then
																	if v1248 then
																		v1243 = not (v1248 == "")
																	else
																		v1243 = v1248
																	end
																	v1243 = v1243 and "OG " .. v1248 or "OG"
																	v1248 = v1243
																	_leave15 = true
																	break
																end
																v1256 = v1253
															end
														end
														if not _leave15 then
															v1253 = v1256
														end
													end
													local insert6 = table.insert
													local v1258 = { displayName = v1244, gen = v1251, rarity = v1248 }
													if v1248 then
														v1242 = not (v1248 == "")
													else
														v1242 = v1248
													end
													v1242 = v1242 and v1251 .. "   " .. v1248 or v1251
													v1258.line2 = v1242
													v1258.num = v1250
													v1258.position = v1247.Parent.WorldPosition
													v1258.prompt = v1247
													v1258.model = v1246
													v1258.base = v1238
													v1258.plotName = v1234.Name
													local v1259 = tonumber(v1239)
													if not v1259 then
														v1259 = 0
													end
													v1258.slot = v1259
													insert6(v1253, v1258)
												end
											end
										end
									end
								end

								pcall(_FH_NV(v1236))
								v1232 = v1229
							end
						end
						local sort = table.sort

						local function v1237(...)
							local v1260
							v1260 = nil < nil
							return v1260
						end

						sort(v1232, _FH_NV(v1237))
						return sort
					end

					v1142 = {}
					v1143 = false
					v1144 = nil

					local function v1159(...)
						local v1261 = nil
						local _FH_AutoGrab2 = _G._FH_AutoGrab
						if v1261 then
							v1261 = _FH_AutoGrab2.hasPriority
						end
						v1261 = v1261 and _FH_AutoGrab2.hasPriority() or false
						return v1261
					end

					v1144 = _FH_NV(v1159)

					local function v1160(...)
						local v1262, v1263
						if not v1262 then
							v1262 = 0
						end
						local v1264 = (nil)(v1262)
						local tostring5 = tostring
						if not v1263 then
							v1263 = ""
						end
						local v1265 = "::" .. v1264 .. "::" .. tostring5(v1263)
						local v1266
						v1266 = v1265[nil .. v1265] == true
						return v1266
					end

					local v1161 = _FH_NV(v1160)

					local function v1162(...)
						local _ = -843022714 + bit32.rrotate(bit32.lrotate(402, 2), 13) + -32389
						local _FH_AutoGrab3 = (nil)._FH_AutoGrab
						if _FH_AutoGrab3 and _FH_AutoGrab3.currentTargetSig then
							return _FH_AutoGrab3.currentTargetSig
						end
						return nil
					end

					local v1163 = _FH_NV(v1162)

					local function v1164()
						local _G13 = _G
						if _G13 and _G13.priorityGrab and _G13.currentTargetSig then
							return _G13.currentTargetSig
						end
						return nil
					end

					local v1165 = _FH_NV(v1164)

					local function v1166()
						while true do
						end
					end

					local v1167 = _FH_NV(v1166)

					local function v1168(...)
						local v1267, v1268
						if not v1267 then
							v1267 = 0
						end
						local v1269 = (nil)(v1267)
						local tostring6 = tostring
						if not v1268 then
							v1268 = ""
						end
						return "::" .. v1269 .. "::" .. tostring6(v1268)
					end

					local v1169 = _FH_NV(v1168)

					local function v1170(...)
						local v1270 = nil
						while task.wait(0.2) do
							local v1271 = v64()
							if v1271 or v1271 ~= _G._FH_GAMMA_GEN then
								break
							end
							local v1272 = v1108.enabled
							if not v1272 then
								v1272 = v1108.lineEnabled
							end
							if not v1272 then
								v1272 = v1144()
							end
							v1270 = v1270 and true or false
							if v1272 and not v1143 then
								v1270 = function()
									while true do
										local _ = 31936 + bit32.band(
											451,
											string.byte("?", 1, nil),
											(string.len("M"))
										) + -31856
									end
								end

								task.spawn(v1270)
							end
						end
					end

					task.spawn(v1170)
					local v1171 = _G._FH_ESP_GUI
					if not v1171 then
						v1171 = v461.Parent
					end
					local v1172 = v1149
					local v1173 = v1154
					local v1174 = v1161
					local v1175 = v1163
					local v1176 = v1165
					local v1177 = v1167
					local v1178 = v1169
					local v1179, v1180, v1181, v1182

					local function v1183()
						while true do
						end
					end

					_FH_NV(v1183)
					local new20 = ColorSequence.new
					local v1184 = table.create(1)
					v1179 = 255
					v1180 = 255
					ColorSequenceKeypoint.new(0, Color3.fromRGB(v1179, v1180, 255))
					local new21 = ColorSequenceKeypoint.new
					v1179 = Color3
					v1179 = v1179.fromRGB
					v1180 = 15
					v1181 = 15
					new21(1, v1179(v1180, 15, v1181))
					local v1185 = new20(v1184)
					local new22 = ColorSequence.new
					local v1186 = table.create(1)
					local new23 = ColorSequenceKeypoint.new
					v1179 = Color3
					v1179 = v1179.fromRGB
					v1180 = 255
					v1181 = 55
					new23(0, v1179(v1180, 55, v1181))
					local new24 = ColorSequenceKeypoint.new
					v1179 = 1
					v1180 = Color3
					v1180 = v1180.fromRGB
					v1181 = 120
					v1182 = 255
					new24(v1179, v1180(60, v1181, v1182))
					local v1187 = new22(v1186)
					local new25 = ColorSequence.new
					local v1188 = table.create(1)
					local new26 = ColorSequenceKeypoint.new
					v1179 = 0
					v1180 = Color3
					v1180 = v1180.fromRGB
					v1181 = 200
					v1182 = 60
					new26(v1179, v1180(255, v1181, v1182))
					v1179 = ColorSequenceKeypoint
					v1179 = v1179.new
					v1180 = 1
					v1181 = 20
					v1182 = 20
					v1179(v1180, Color3.fromRGB(v1181, v1182, 20))
					local v1189 = new25(v1188)

					v1179 = function(...)
						local v1273 = nil
						v1273 = v1273 and tostring(nil):lower() or ""
						local _ = 28710 + bit32.bor(
							663,
							string.unpack(">i8", "\0\0\0\0\0\0\1\213"),
							9
						) + -29508
						if v1273:find("secret") then
							return v1185
						end
						local god = v1273:find("god")
						if god then
							return god
						end
						local og = v1273:find("og")
						if og then
							return og
						end
						return nil
					end

					_FH_NV(v1179)
					local v1190 = {}
					v1179 = nil
					v1180 = _FH_NV

					local function v1191()
						Instance.new("TextLabel")
						return (Color3.fromRGB(0, 0, 0))
					end

					v1180 = v1180(v1191)
					v1179 = v1180
					v1180 = nil
					local v1192 = v1171

					v1181 = function(...)
						local v1274 = v1190[nil]
						if v1274 then
							return nil
						end
						Instance.new("BillboardGui")
						UDim2.new(0, 140, 0, 42)
						Vector3.new(0, 2.6, 0)
						v1179(0, 0, 14, 13, Color3.fromRGB(255, 255, 255))
						v1179(0, 14, 14, 12, Color3.fromRGB(255, 255, 255))
						Instance.new("UIGradient")
						v1179(14, 28, 14, 12, Color3.fromRGB(110, 230, 140))
						v1190[nil] = v1274
						return {}
					end

					v1180 = _FH_NV(v1181)
					v1181 = "Highlight"
					local v1193 = Instance.new(v1181)
					v1181 = Color3
					v1181 = v1181.fromRGB
					v1182 = 255
					v1181 = v1181(v1182, 50, 50)
					v1193.FillColor = v1181
					v1181 = Color3
					v1181 = v1181.fromRGB
					v1182 = 255
					v1181 = v1181(v1182, 255, 255)
					v1193.OutlineColor = v1181
					v1193.FillTransparency = 0.4
					v1193.OutlineTransparency = 0
					v1181 = Enum
					v1181 = v1181.AlwaysOnTop
					v1193.DepthMode = v1181
					v1193.Enabled = false
					v1193.Parent = v1118
					v1181 = 0
					v1182 = nil

					local function v1194(...)
						local v1275, v1276
						local v1277 = v64()
						if v1277 or v1277 ~= _G._FH_GAMMA_GEN then
							if v1182 then
								v1182:Disconnect()
							end
							return
						end
						local v1278 = v1181
						local v1279 = v462
						v1279 = v1279 and 0.15 or 0.08
						if v1278 < v1279 then
							return
						end
						local v1280 = v1144()
						local v1281 = v1175()
						local v1282 = v1176()
						if not (v1108.enabled or v1108.lineEnabled or (v1280 or v1281) or v1282) then
							for _, v1283 in ipairs(v1190) do
								if v1283.bb.Enabled then
								end
							end
							return
						end
						local v1284 = 0
						Color3.fromRGB(60, 140, 255)
						Color3.fromRGB(255, 80, 200)
						local c12 = v463.c1
						local v1285, v1286, v1287, v1288
						local v1289 = math.huge
						local v1290 = v1108.lineEnabled
						v1290 = v1290 and v1172() or nil
						local v1291, v1292, v1293
						v1293, v1292, v1291 = ipairs(v1142)
						while true do
							local _continue16 = false
							local v1294
							v1291, v1294 = v1293(v1292, v1291)
							if v1291 == nil then
								break
							else
								if not (v1285 or not v1281 or not v1177(v1294, v1275)) then
									v1285 = v1294.model
								end
								if not (v1286 or not v1282 or not v1178(v1294, v1282)) then
									v1286 = v1294.model
								end
								if not (v1287 or not v1280 or not v1174(v1294)) then
									v1287 = v1294.model
								end
								if v1290 and v1294.position then
									local Magnitude = (v1294.position - v1290.Position).Magnitude
									if Magnitude < v1289 then
										v1288 = v1294.model
										v1289 = Magnitude
									end
								end
								local v1295 = v1294.rarity
								if v1295 then
									v1295 = not (v1294.rarity == "")
								end
								v1295 = v1295 and tostring(v1294.rarity):lower() or ""
								local og2 = v1295:find("og")
								v1275 = v1295:find("secret")
								local v1296 = nil
								if v1281 and v1177(v1294, v1276) then
									v1296 = c12
								elseif v1282 and v1178(v1294, v1282) then
									v1276 = v1282
								elseif v1280 then
									if not v1174(v1294) then
										_continue16 = true
									end
								elseif v1108.enabled and (og2 or v1275) then
									v1296 = v1275
								else
									_continue16 = true
								end
								if _continue16 then
									continue
								end
								local v1297 = v1173(v1294)
								if v1297 then
									v1284 = v1284 + 1
									local v1298 = v1180(v1276)
									if v1298.bb.Adornee == v1297 then
									end
									v1276 = v1294.displayName
									if not v1276 then
										v1276 = "Brainrot"
									end
									local v1299 = v1294.rarity
									if v1299 then
										v1299 = not (v1294.rarity == "")
									end
									v1299 = v1299 and tostring(v1294.rarity) or ""
									local v1300 = v1294.gen
									if not v1300 then
										v1300 = ""
									end
									if v1298.nameLbl.Text ~= v1276 then
										v1298.nameLbl.Text = v1276
									end
									if v1298.rarityLbl.Text ~= v1299 then
										v1298.rarityLbl.Text = v1299
									end
									if v1298.genLbl.Text ~= v1300 then
										v1298.genLbl.Text = v1300
									end
									if v1298.nameLbl.TextColor3 ~= v1296 then
										v1298.nameLbl.TextColor3 = v1296
									end
									if v1298.rarityLbl.TextColor3 ~= v1296 then
										v1298.rarityGrad.Enabled = false
										v1298.rarityLbl.TextColor3 = v1296
									end
									if not v1298.bb.Enabled then
										v1298.bb.Enabled = true
									end
								end
							end
						end
						local v1301 = v1190
						local v1302 = v1284 + 1 - 1
						while true do
							v1302 = v1302 + 1
							if v1302 <= #v1301 then
								if v1190[v1302].bb.Enabled then
									v1190[v1302].bb.Enabled = false
								end
							else
								break
							end
						end
						if not v1302 then
							v1302 = v1108.lineEnabled
							if v1302 and not v1287 then
								v1302 = v1288
							end
						end
						if not v1302 then
							v1302 = nil
						end
						if v1193.Adornee == v1302 then
						end
					end

					v1182 = RunService.Heartbeat:Connect(_FH_NV(v1194))
				end

				pcall(v1114)
			end

			spawn2(v1111)
			return spawn2
		end

		v465 = v464()
		_FH_yield()
		local v466 = v178
		local v467 = v84

		local function v468()
			bit32.rrotate(0, 5)
			local v1303 = {}

			local function v1304(...)
				local v1306 = nil
				string.unpack("<i8", "\179\1\0\0\0\0\0\0")
				if v1306 then
					return
				end
				if not v1306 then
					v1306 = false
				end
				v1303.enabled = v1306
			end

			_FH_NV(v1304)
			local spawn3 = task.spawn

			local function v1305()
				local function v1307(...)
					local v1308 = nil
					if not cloneref then
						v1308 = function(...)
							return nil
						end

						_FH_NV(v1308)
					end
					local v1309 = v1308(game:GetService("Workspace"))
					local Plots2 = v1309:FindFirstChild("Plots")
					while not Plots2 do
						task.wait(0.5)
						if _FH_GAMMA_GEN ~= _G._FH_GAMMA_GEN then
							return
						end
						Plots2 = v1309:FindFirstChild("Plots")
					end
					local v1310 = _G._FH_ESP_GUI
					if not v1310 then
						v1310 = v466.Parent
					end
					local v1311 = nil
					local GetChildren3 = Plots2:GetChildren()
					local ChildAdded = Plots2.ChildAdded
					v1311 = ChildAdded

					local function v1312()
						table.insert(GetChildren3, nil)
					end

					ChildAdded.Connect(v1311, _FH_NV(v1312))
					local ChildRemoved = Plots2.ChildRemoved
					v1311 = ChildRemoved
					local function v1313()
					end
					ChildRemoved.Connect(v1311, _FH_NV(v1313))
					local v1314 = {}
					v1311 = nil

					local function v1315(...)
						local v1330
						v1330 = not not false
						if v1330 then
							v1330 = v1330(nil, "TextLabel")
							if not v1330 then
								v1330 = v1330(nil, "TextBox")
							end
						end
						return v1330
					end

					_FH_NV(v1315)
					local v1316, v1317, v1318
					v1318, v1317, v1316 = ipairs(nil)
					local v1319 = v1317
					local v1320 = v1316
					local v1321, v1322, v1323, v1324, v1325
					while true do
						local v1326
						v1320, v1326 = v1318(v1317, v1320)
						v1325 = Plots2
						v1324 = v1319
						v1323 = v1316
						v1322 = nil
						v1321 = nil
						if v1320 == nil then
							break
						else
							(nil)(nil)
							v1316 = v1326
							v1319 = v1320
						end
					end
					local ChildAdded2 = v1325.ChildAdded
					v1324 = ChildAdded2
					ChildAdded2.Connect(v1324, v1323)
					local ChildRemoved2 = v1325.ChildRemoved
					v1324 = ChildRemoved2
					local Connect4 = ChildRemoved2.Connect
					v1323 = _FH_NV

					v1322 = function()
						for v1335, _ in pairs(v1314) do
							if v1335.IsDescendantOf then
							end
						end
					end

					Connect4(v1324, v1323(v1322))
					local v1327 = {}
					v1324 = nil
					v1323 = nil
					v1322 = _FH_NV
					local v1328 = v1310

					v1321 = function(...)
						local v1336 = "BillboardGui"
						local v1337 = Instance.new(v1336)
						v1337.Name = "TIMER_ESP"
						v1336 = v1336 and UDim2.new(0, 84, 0, 21) or UDim2.new(0, 140, 0, 36)
						v1337.Size = v1336
						v1337.StudsOffset = Vector3.new(0, 2.2, 0)
						v1337.AlwaysOnTop = true
						v1337.LightInfluence = 0
						local huge = math.huge
						v1337.MaxDistance = huge
						v1337.Enabled = false
						v1337.Parent = huge
						Instance.new("TextLabel")
						UDim2.new(1, 0, 1, 0)
						local v1338 = Enum.Font.GothamBold
						if v1338 then
							v1338 = 12
						end
						Color3.fromRGB(255, 255, 255)
						Instance.new("UIGradient")
						return (nil).bb
					end

					v1322 = v1322(v1321)
					v1323 = v1322
					v1322 = 0
					v1321 = nil

					local function v1329(...)
						local v1339 = nil
						local v1340 = v64()
						if v1340 or v1340 ~= _G._FH_GAMMA_GEN then
							if v1321 then
								v1321:Disconnect()
							end
							return
						end
						if v1322 < 0.1 then
							return
						end
						local v1341, v1342, v1343
						v1343, v1342, v1341 = pairs(nil)
						local v1344 = v1342
						while true do
							local _
							v1341, _ = v1343(v1342, v1341)
							if v1341 == nil then
								break
							else
								v1344 = v1341
							end
						end
						if v1303.enabled then
							local v1345, v1346, v1347
							v1347, v1346, v1345 = pairs(v1344)
							v1344 = v1346
							while true do
								local _
								v1345, _ = v1347(v1346, v1345)
								if v1345 == nil then
									break
								else
									v1344 = v1345
								end
							end
						end
						for _, v1348 in pairs(v1344) do
							if not v1348.used then
								if v1348.bb.Enabled then
								end
								if typeof(v1339) == "Instance" then
									local v1349 = v1348

									v1339 = function()
										local v1350
										v1350 = 46 == string.len("\199")
										v1350 = v1350 and 432 or string.len("")
										string.unpack(">i8", "\0\0\0\0\0\0\1\137")
										while true do
											v1349.bb:Destroy()
										end
									end

									pcall(v1339)
								end
							end
						end
					end

					v1321 = RunService.Heartbeat:Connect(_FH_NV(v1329))
				end

				pcall(v1307)
			end

			spawn3(v1305)
			return spawn3
		end

		v469 = v468()
		_G._FH_REG_TimerESP = v469
		local v470 = v178
		local v471 = v63
		local v472 = v84

		local function v473()
			local v1351 = {}

			local function v1352(...)
				local v1354 = nil
				v1354 = v1354 and true or false
				v1351.enabled = v1354
			end

			_FH_NV(v1352)
			local spawn4 = task.spawn

			local function v1353(...)
				local v1355
				v1355 = not not false
				v1355 = v1355 and 332 or 111
				pcall(nil)
			end

			spawn4(v1353)
			return spawn4
		end

		v474 = v473()
		_G._FH_REG_PlayerESP = v474
		local v475 = v261
		local v476 = v178

		local function v477()
			local _ = 15817 + (string.unpack("<i8", "\185\1\0\0\0\0\0\0") - math.modf(3.141592653589793) + 483) + -16736
			local v1356 = {}

			local function v1357(...)
				local v1360 = nil
				local _ = 25820 + bit32.countrz((bit32.bxor((string.len("s\210"))))) + -25609
				v1360 = v1360 and true or false
				v1356.enabled = v1360
			end

			_FH_NV(v1357)

			local function v1358(...)
				local v1361 = {}
				v1356.names = v1361
				for v1362, _ in v1361(nil, "[^,]+") do
					local match = v1362:match("^%s*(.-)%s*$")
					if 0 < #match then
						match:lower()
					end
				end
			end

			_FH_NV(v1358)
			local spawn5 = task.spawn

			local function v1359(...)
				local _ = 19247 + bit32.countrz(string.byte("+X\6", 2, 3) - 182) + -19246
				local friendesp_names = v475.get("friendesp_names", nil)
				if friendesp_names and 0 < #friendesp_names then
					v1356.setNames(nil)
				end
				;(nil)(nil)
			end

			spawn5(v1359)
			return spawn5
		end

		v478 = v477()
		_G._FH_REG_FriendESP = v478
		local v479 = v178
		local v480 = v84

		local function v481(...)
			local _ = -3758087007 + bit32.bnot((bit32.lshift(
				144,
				(string.unpack(">i8", "\0\0\0\0\0\0\0\25"))
			))) + -9303
			local v1400 = nil

			local function v1401(...)
				local v1404 = nil
				v1404 = v1404 and true or false
				v1400.enabled = v1404
			end

			_FH_NV(v1401)
			local spawn6 = task.spawn
			local v1402 = nil

			local function v1403()
				local function v1405(...)
					local v1406 = nil
					if not cloneref then
						v1406 = function(...)
							return nil
						end

						_FH_NV(v1406)
					end
					local Plots3 = v1406(game:GetService("Workspace")):WaitForChild("Plots", 15)
					if not Plots3 then
						return
					end
					local v1407 = _G._FH_ESP_GUI
					if not v1407 then
						v1407 = v479.Parent
					end
					local v1408, v1409, v1410
					if not v1407 then
						v1407 = v479
						v1408 = nil
						v1409 = nil
						v1410 = nil
					end
					local GetChildren4 = Plots3:GetChildren()
					local ChildAdded3 = Plots3.ChildAdded
					local Connect5 = ChildAdded3.Connect
					v1408 = _FH_NV
					local function v1411()
					end
					Connect5(ChildAdded3, v1408(v1411))
					local ChildRemoved3 = Plots3.ChildRemoved
					local Connect6 = ChildRemoved3.Connect
					v1408 = _FH_NV

					local function v1412()
						string.byte("m", 1, nil)
					end

					Connect6(ChildRemoved3, v1408(v1412))
					local v1413 = {}
					v1408 = nil
					local v1414 = v1407

					local function v1415(...)
						local v1419 = nil
						if not v1419 then
							local v1420 = "BillboardGui"
							local v1421 = Instance.new(v1420)
							v1421.Name = "FP_ESP"
							if v1420 then
								v1420 = 22
							end
							v1421.Size = UDim2.new(0, nil, 0, nil)
							v1421.StudsOffset = Vector3.new(0, 2.4, 0)
							v1421.AlwaysOnTop = true
							v1421.LightInfluence = 0
							local huge2 = math.huge
							v1421.MaxDistance = huge2
							v1421.Enabled = false
							v1421.Parent = huge2
							Instance.new("TextLabel")
							UDim2.new(1, 0, 1, 0)
							Color3.fromRGB(0, 0, 0)
							local v1422 = Enum.Font.GothamBold
							if v1422 then
								v1422 = 16
							end
							Color3.fromRGB(255, 255, 255)
							Instance.new("UICorner")
							UDim.new(1, 0)
							Instance.new("UIStroke")
							Color3.fromRGB(0, 0, 0)
							local v1423 = Enum.Font.SourceSansBold
							if v1423 then
								v1423 = 20
							end
							v1419 = {}
						end
						return v1419.bb
					end

					v1408 = _FH_NV(v1415)
					v1409 = 230
					v1410 = 110
					local v1416 = Color3.fromRGB(60, v1409, v1410)
					v1409 = 240
					v1410 = 60
					local v1417 = Color3.fromRGB(v1409, v1410, 60)
					v1409 = 0
					v1410 = nil

					local function v1418(...)
						local v1424 = nil
						local v1425 = v64()
						if v1425 or v1425 ~= _G._FH_GAMMA_GEN then
							if v1410 then
								v1410:Disconnect()
							end
							return
						end
						if v1409 < 0.1 then
							return
						end
						local v1426, v1427, v1428
						v1428, v1427, v1426 = pairs(v1413)
						local v1429 = v1427
						while true do
							local v1430
							v1426, v1430 = v1428(v1427, v1426)
							if v1426 == nil then
								break
							else
								v1430.used = false
								v1429 = v1426
							end
						end
						local v1431
						if v1402.enabled then
							for _, v1432 in ipairs(v1429) do
								local v1433 = v1432:FindFirstChild("FriendPanel")
								if v1433 then
									local v1434 = v1433:IsA("BasePart")
									if not v1434 then
										v1434 = v1433.PrimaryPart
									end
									if not v1434 then
										v1434 = v1433:FindFirstChildWhichIsA("BasePart", true)
									end
									if v1434 then
										local v1435 = "Main"
										local FindFirstChild = v1433:FindFirstChild(v1435)
										if v1433 then
											v1433 = FindFirstChild:FindFirstChild("SurfaceGui")
											v1435 = FindFirstChild
										end
										if v1433 then
											v1435 = FindFirstChild.SurfaceGui
											v1433 = v1435:FindFirstChild("ImageLabel")
										end
										if v1435 then
											v1435 = v1433.Image == "rbxassetid://110783679426495"
										end
										local v1436 = v1408(v1432.Name, v1424)
										v1431 = v1435 and "X" or v1435
										if not v1431 then
											v1431 = "✓"
										end
										if v1436.lbl.Text == v1431 then
										end
										Color3.fromRGB(0, 0, 0)
										v1424 = v1436.bb
									end
								end
							end
						end
						for _, v1437 in pairs(v1413) do
							if v1437.used or not v1437.bb.Enabled then
							end
						end
					end

					v1410 = RunService.Heartbeat:Connect(_FH_NV(v1418))
				end

				pcall(v1405)
			end

			spawn6(v1403)
			return spawn6
		end

		v482 = v481()
		_G._FH_REG_FriendPanelESP = v482

		local function v483()
			local v1438 = {}
			local v1439, v1440, v1441, v1442
			local v1443 = {}
			local v1444 = {}
			local v1445 = table.create(7)
			Vector3.new(-342.439, 10.399, 113.107)
			local v1446 = 6.107
			Vector3.new(-342.439, 10.465, v1446)
			v1446 = 10.465
			local v1447 = 114.107
			Vector3.new(-476.752, v1446, v1447)
			v1446 = -476.752
			v1447 = 10.465
			local v1448 = 7.107
			Vector3.new(v1446, v1447, v1448)
			v1446 = Vector3
			v1446 = v1446.new
			v1447 = -342.44
			v1448 = 10.464
			local v1449 = 220.107
			v1446 = v1446(v1447, v1448, v1449)
			v1447 = Vector3
			v1447 = v1447.new
			v1448 = -476.752
			v1449 = 10.465
			v1447 = v1447(v1448, v1449, 221.107)
			v1448 = Vector3
			v1448 = v1448.new
			v1449 = -342.439
			v1448 = v1448(v1449, 10.465, -100.893)
			v1449 = Vector3
			v1449 = v1449.new
			local v1450 = utf8.char(11015)

			local function v1451(...)
				local v1458 = nil

				local function v1459()
					while true do
					end
				end

				local v1460, v1461
				v1461, v1460 = pcall(_FH_NV(v1459))
				if not v1461 then
					return nil
				end
				local Position2 = v1460.Position
				local v1462, v1463, v1464, v1465
				v1465, v1464, v1463 = ipairs(v1445)
				while true do
					local v1466
					v1463, v1466 = v1465(v1464, v1463)
					if v1463 == nil then
						break
					else
						local v1467 = Position2.X - v1466.X
						local v1468 = Position2.Z
						local v1469 = math.sqrt(v1467 * v1467 + v1468 * v1468)
						if not (v1462 and not (v1469 < v1462)) then
							v1462 = v1469
						end
					end
				end
				if v1465 then
					v1465 = v1462 <= 6
				end
				if not v1465 then
					v1465 = nil
				end
				return v1465
			end

			v1446 = nil
			v1447 = _FH_NV

			v1448 = function()
				local v1470
				v1470 = (nil).Text:gsub("^%s+", ""):gsub("%s+$", "") == "Empty Base"
				return v1470
			end

			v1447 = v1447(v1448)
			v1446 = v1447
			v1447 = nil
			v1448 = _FH_NV

			v1449 = function(...)
				if not (v1439 and v1440) then
					if v1440 then
						v1440.Enabled = false
					end
					return
				end
				for v1471 = 1, #nil do
					local v1472 = v1443[v1471]
					if v1472 and v1472.label and v1446(v1472.label) then
						break
					end
				end
				if nil then
					v1439.CFrame = v1443[nil].cf
					v1440.Enabled = true
				else
					v1440.Enabled = false
				end
			end

			v1448 = v1448(v1449)
			v1447 = v1448
			v1448 = nil
			v1449 = _FH_NV
			local v1452 = {}

			local function v1453(...)
				if v1452[nil] then
					return
				end
				v1452[nil] = true
				table.insert(v1444, (nil).GetPropertyChangedSignal(nil, "Text"):Connect(v1447))
			end

			v1449 = v1449(v1453)
			v1448 = v1449
			v1449 = nil

			local function v1454(...)
				local v1473, v1474, v1475
				for _, v1476 in ipairs((nil).GetChildren(nil)) do
					local v1477 = "PlotSign"
					local FindFirstChild2 = v1476:FindFirstChild(v1477)
					if v1476 then
						v1473 = "Model"
						v1476 = FindFirstChild2:FindFirstChild(v1473)
						v1477 = FindFirstChild2
					end
					if v1477 then
						v1474 = "SurfaceGui"
						v1477 = FindFirstChild2:FindFirstChild(v1474)
						v1473 = FindFirstChild2
					end
					if v1473 then
						v1473 = v1477:FindFirstChild("Frame")
						v1474 = v1477
					end
					if v1474 then
						v1475 = "TextLabel"
						v1474 = v1473:FindFirstChild(v1475)
					end
					if v1476 and v1474 and v1451(v1475) then
						select(1, v1476:GetBoundingBox())
						v1475 = v1448
						v1475(v1474)
					end
				end
				v1447()
			end

			v1449 = _FH_NV(v1454)

			local function v1455()
				local _ = 1956 + bit32.rshift(bit32.bnot(174), 18) + -18337

				local function v1478(...)
					local v1480 = nil
					if not cloneref then
						v1480 = function(...)
							local v1488
							v1488 = string.len("E") == 9
							v1488 = v1488 and string.unpack(">i8", "\0\0\0\0\0\0\0$") or 216
							string.len("\20")
							return nil
						end

						_FH_NV(v1480)
					end
					local v1481 = v1480(game:GetService("Workspace"))
					local Plots4 = v1481:WaitForChild("Plots", 15)
					if not Plots4 then
						return
					end
					Instance.new("Part")
					v1439.Name = "__NextBaseAnchor"
					v1439.Anchored = true
					v1439.CanCollide = false
					v1439.CanQuery = false
					v1439.CanTouch = false
					v1439.Transparency = 1
					v1439.Size = Vector3.new(1, 1, 1)
					v1439.Parent = v1481
					Instance.new("BillboardGui")
					v1440.Name = "NextBaseBillboard"
					v1440.Adornee = v1439
					v1440.Size = UDim2.fromScale(32, 13)
					v1440.StudsOffset = Vector3.new(0, 10, 0)
					v1440.MaxDistance = math.huge
					v1440.AlwaysOnTop = true
					v1440.LightInfluence = 0
					v1440.Enabled = false
					v1440.Parent = v1439
					Instance.new("TextLabel", v1440)
					v1441.BackgroundTransparency = 1
					v1441.AnchorPoint = Vector2.new(0.5, 0.5)
					v1441.Position = UDim2.fromScale(0.5, 0.3)
					v1441.Size = UDim2.fromScale(0.95, 0.5)
					local GothamBlack = Enum.Font.GothamBlack
					v1441.Font = GothamBlack
					v1441.Text = GothamBlack .. "  NEXT  0.95"
					v1441.TextScaled = true
					v1441.TextColor3 = Color3.fromRGB(46, 230, 92)
					v1441.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					v1441.TextStrokeTransparency = 0
					Instance.new("TextLabel", v1440)
					v1442.BackgroundTransparency = 1
					v1442.AnchorPoint = Vector2.new(0.5, 0.5)
					v1442.Position = UDim2.fromScale(0.5, 0.72)
					v1442.Size = UDim2.fromScale(0.95, 0.42)
					v1442.Font = Enum.Font.GothamBlack
					v1442.Text = "EMPTY BASE"
					v1442.TextScaled = true
					v1442.TextColor3 = Color3.fromRGB(255, 255, 255)
					Color3.fromRGB(0, 0, 0)
					v1442.TextStrokeTransparency = 0
					v1449(0)
					local insert7 = table.insert

					local function v1482(...)
						local TextLabel5 = "TextLabel"
						if (nil)(nil, TextLabel5) then
							task.defer(v1449, TextLabel5)
						end
					end

					Plots4.DescendantAdded:Connect(_FH_NV(v1482))
					insert7()
					local insert8 = table.insert

					local function v1483()
						local _ = 25124 + bit32.countlz((bit32.bxor((string.byte("vc", 1, nil))))) + -24994
					end

					Plots4.ChildAdded:Connect(_FH_NV(v1483))
					insert8()
					repeat
						task.wait(1)
						local v1484 = v64()
					until v1484 or v1484 ~= _G._FH_GAMMA_GEN
					for _, v1485 in ipairs(v1444) do
						local v1486 = v1485

						local function v1487()
							v1486:Disconnect()
						end

						pcall(_FH_NV(v1487))
					end
					if v1439 then
						v1439:Destroy()
					end
				end

				local v1479, _
				_, v1479 = pcall(v1478)
				if v1479 then
					return
				end
			end

			task.spawn(v1455)

			local function v1456(...)
				local v1489 = nil
				if v1489 then
					bit32.bxor(133)
					return false, 55, 13
				end
				if not v1489 then
					v1489 = false
				end
				v1438.enabled = v1489
				v1447()
			end

			local v1457 = _FH_NV(v1456)
			v1449(-476.752, 10.465, -99.893)
			return v1457
		end

		v484 = v483()
		_G._FH_REG_NextBaseESP = v484

		local function v485()
			local v1490 = {}
			local v1491, v1492
			local v1493 = Color3.fromRGB(55, 185, 255)

			local function v1494(...)
				string.byte("\197P\189\26", 2, 2)
				local Base = (nil).FindFirstChild(nil, "Base")
				if Base:IsA("Model") then
					local function v1506()
						return Base:GetBoundingBox()
					end

					local _, v1507, v1508
					v1508, v1507, _ = pcall(_FH_NV(v1506))
					if v1508 then
						return v1507, nil
					end
				elseif Base:IsA("BasePart") then
					return Base.CFrame, Base.Size
				end
			end

			local v1495 = nil
			local v1496 = _FH_NV

			local function v1497()
				local Part = Instance.new("Part")
				local SelectionBox = "SelectionBox"
				local v1509 = Instance.new(SelectionBox)
				v1509.Adornee = Part
				v1509.Color3 = SelectionBox
				v1509.SurfaceColor3 = SelectionBox
				v1509.LineThickness = 0.06
				v1509.Transparency = 0
				v1509.SurfaceTransparency = 0.82
				v1509.Parent = Part
			end

			v1496 = v1496(v1497)
			v1496 = nil
			v1497 = _FH_NV

			local function v1498(...)
				local v1510, v1511, v1512, v1513, v1514, v1515
				v1515, v1514, v1513 = ipairs(v1492:GetChildren())
				local v1516 = v1514
				while true do
					local _continue20 = false
					local v1517
					v1513, v1517 = v1515(v1514, v1513)
					if v1513 == nil then
						break
					else
						local AnimalPodiums = v1517:FindFirstChild("AnimalPodiums")
						if AnimalPodiums then
							local v1518, v1519, v1520
							v1520, v1519, v1518 = ipairs(AnimalPodiums:GetChildren())
							local v1521 = v1519
							local v1522 = v1518
							while true do
								local v1523
								v1522, v1523 = v1520(v1519, v1522)
								if v1522 == nil then
									break
								else
									v1510 = v1510(v1523)
									if v1510 then
										v1518 = v1523
										v1521 = v1522
									else
										v1518 = v1523
										v1521 = v1522
									end
								end
							end
							table.sort(v1521)
							local v1524
							v1512, v1524, v1510 = ipairs(v1518)
							local v1525 = v1510
							while true do
								local v1526
								v1525, v1526 = v1512(v1524, v1525)
								if v1525 == nil then
									break
								else
									local v1527 = false
									local v1528, v1529
									v1529, v1528, v1511 = ipairs(v1511)
									local v1530 = v1528
									local _leave19 = false
									while true do
										local v1531
										v1511, v1531 = v1529(v1528, v1511)
										if v1511 == nil then
											break
										else
											if math.abs(v1531 - v1526) <= 8 then
												v1527 = true
												_leave19 = true
												break
											end
											v1530 = v1511
										end
									end
									if not _leave19 then
										v1511 = v1530
									end
									if v1527 then
										v1510 = v1526
									else
										v1510 = v1526
									end
								end
							end
							if nil then
								v1512 = #{}
								if not (#nil < v1512) then
									v1516 = v1513
									_continue20 = true
								end
							end
							if _continue20 then
								continue
							end
							v1516 = v1513
						else
							v1516 = v1513
						end
					end
				end
				if nil then
					v1516 = #nil
					if 2 <= v1516 then
						v1516 = 1
						while true do
							v1516 = v1516 + 1
							if v1516 <= #nil then
								v1512 = v1512 - (nil)[1]
							else
								break
							end
						end
					end
				end
				return v1516
			end

			v1497 = v1497(v1498)
			v1497 = nil
			v1498 = _FH_NV

			local function v1499()
				if not (v1490.enabled and v1491 and v1492) then
					return
				end
				ipairs(v1491:GetChildren())
				v1496()
				for _, v1532 in ipairs(v1492:GetChildren()) do
					local AnimalPodiums2 = v1532:FindFirstChild("AnimalPodiums")
					if AnimalPodiums2 then
						local _, v1533, _
						_, v1533, _ = ipairs(AnimalPodiums2:GetChildren())
						local v1534, v1535, v1536
						v1536, v1535, v1534 = ipairs(v1533)
						local v1537 = v1535
						while true do
							local v1538
							v1534, v1538 = v1536(v1535, v1534)
							if v1534 == nil then
								break
							else
								v1495(v1538.cf, v1538.sz)
								v1537 = v1534
							end
						end
						ipairs(v1537)
					end
				end
			end

			v1498 = v1498(v1499)
			v1497 = v1498
			v1498 = false

			local function v1500()
				local _ = 14521 + bit32.countlz((bit32.bxor(
					466,
					string.unpack(">i8", "\0\0\0\0\0\0\0\140"),
					58
				))) + -14389
				if v1498 then
					return
				end

				local function v1539()
					if v1490.enabled then
						v1497()
					end
				end

				task.delay(0.4, _FH_NV(v1539))
			end

			local v1501 = nil
			local v1502 = {}

			local function v1503(...)
				local AnimalPodiums3 = (nil)(nil, "AnimalPodiums", 8)
				if AnimalPodiums3 then
					AnimalPodiums3.ChildAdded:Connect(8)
					AnimalPodiums3.ChildRemoved:Connect(8)
				end
			end

			v1501 = _FH_NV(v1503)

			local function v1504()
				local v1540
				v1540 = 112 <= string.byte(">\251M\28", 2, nil) - string.byte("\169", 1, 1)
				v1540 = v1540 and string.unpack(">i8", "\0\0\0\0\0\0\0\0") or 403

				local function v1541(...)
					local v1542 = nil
					if not cloneref then
						v1542 = function(...)
							local v1546
							v1546 = string.unpack(">i8", "\0\0\0\0\0\0\0I") + 502 <= 465
							v1546 = v1546 and 323 or string.unpack("<i8", "\216\1\0\0\0\0\0\0")
							return nil
						end

						_FH_NV(v1542)
					end
					local v1543 = v1542(game:GetService("Workspace"))
					v1543:WaitForChild("Plots", 15)
					if not v1492 then
						return
					end
					local __PodiumMarkers = v1543:FindFirstChild("__PodiumMarkers")
					if __PodiumMarkers then
						__PodiumMarkers:Destroy()
					end
					Instance.new("Folder")
					v1491.Name = "__PodiumMarkers"
					v1491.Parent = v1543
					for _, _ in ipairs(v1492:GetChildren()) do
						task.spawn(v1501, nil)
					end

					local function v1544()
						local _ = 5663 + (string.unpack(">i8", "\0\0\0\0\0\0\1@") + string.unpack("<i8", "\192\1\0\0\0\0\0\0") + 160) + -6520
						task.spawn()
					end

					v1492.ChildAdded:Connect(_FH_NV(v1544))
					repeat
						task.wait(1)
						local v1545 = v64()
					until v1545 or v1545 ~= _G._FH_GAMMA_GEN
					if v1491 then
						v1491:Destroy()
					end
				end

				pcall(v1541)
			end

			task.spawn(v1504)

			local function v1505(...)
				local v1547 = nil
				v1547 = v1547 and true or false
				v1490.enabled = v1547
				if v1490.enabled then
					v1497()
				elseif v1491 then
					for _, v1548 in ipairs(v1491:GetChildren()) do
						v1548:Destroy()
					end
				end
			end

			return (_FH_NV(v1505))
		end

		v486 = v485()
		_G._FH_REG_PodiumESP = v486
		local v487 = v261

		local function v488()
			local v1549 = {}
			local v1550 = v487.get
			local v1551 = "booster_spd"
			local v1552 = 29
			v1550 = v1550(v1551, v1552)
			v1550 = v487.get
			v1551 = "booster_jmp"
			v1552 = 50
			v1550 = v1550(v1551, v1552)
			v1550 = _FH_NV

			v1551 = function()
				local v1563 = tonumber
				if not v1563 then
					v1563 = v1549.speed
				end
				v1549.speed = v1563
			end

			v1550 = v1550(v1551)
			v1550 = _FH_NV

			v1551 = function(...)
				local _ = 16266 + (bit32.rshift(math.modf(3.141592653589793), 22) + string.byte("\143e", 1, 1)) + -16408
				local v1564 = tonumber(nil)
				if not v1564 then
					v1564 = v1549.jump
				end
				v1549.jump = v1564
				v487.set("booster_jmp", v1549.jump)
			end

			v1550 = v1550(v1551)
			v1550 = nil
			v1551 = nil
			v1552 = nil

			local function v1553()
				string.byte("\236", 1, 1)
				local v1565 = v1550
				if v1565 then
					v1565:Disconnect()
				end
				if v1551 then
					v1551:Disconnect()
				end
			end

			_FH_NV(v1553)

			local function v1554()
				v1552()
				while true do
				end
			end

			v1553 = false
			local v1555 = {}

			local function v1556(...)
				local v1566, v1567
				v1567 = not not true
				v1567 = v1567 and 40 or 35
				if v1566 then
					v1566 = not next(v1555)
				end
				if v1566 then
					v1549.enabled = true
					if not v1553 then
						local function v1568()
							pcall(v1554)
						end

						task.spawn(_FH_NV(v1568))
					end
				else
					v1549.enabled = false
					if v1553 then
						v1552()
					end
				end
			end

			local function v1557(...)
				local v1569 = nil
				v1569 = v1569 and true or false
				bit32.bnot(387)
				v1549.userEnabled = v1569
				return nil, nil, nil, nil, nil, nil
			end

			_FH_NV(v1557)

			local function v1558()
				local v1570
				v1570 = 53 < string.unpack("<i8", "\1\1\0\0\0\0\0\0")
				v1570 = v1570 and 4 or 1
				local default = "default"
				v1555[default] = true
				default()
			end

			_FH_NV(v1558)

			local function v1559()
				local v1571
				v1571 = 437 <= string.unpack("<i8", "\192\1\0\0\0\0\0\0") + 281
				v1571 = v1571 and 374 or string.unpack(">i8", "\0\0\0\0\0\0\1/")
			end

			_FH_NV(v1559)
			local v1560 = GetService2.LocalPlayer
			if not v1560 then
				v1560 = GetService2.PlayerAdded:Wait()
			end

			local function v1561()
				if _FH_GAMMA_GEN ~= _G._FH_GAMMA_GEN then
					return
				end
				v1552()
				v1556()
			end

			v1560.CharacterAdded:Connect(_FH_NV(v1561))
			local spawn7 = task.spawn

			local function v1562()
				bit32.lrotate(121, 1)
			end

			spawn7(_FH_NV(v1562))
			return spawn7
		end

		v489 = v488()
		_FH_yield()
		local LocalPlayer2 = game:GetService("Players").LocalPlayer
		v121 = "RunService"
		local GetService3 = game:GetService(v121)
		local v490 = {
			["Invisibility Cloak"] = true,
			["Invis Cloak"] = true,
			Invisibility = true,
			Cloak = true
		}
		v121 = false
		v122 = false
		v123 = {}
		v124 = nil
		v125 = _FH_NV
		local v491 = LocalPlayer2
		local v492 = v490

		v126 = function()
			local Character3 = v491.Character
			if not Character3 then
				return false
			end
			for _, v1572 in ipairs(Character3:GetChildren()) do
				if v492[v1572.Name] and v1572:IsA("Tool") then
					return true
				end
			end
			return false
		end

		v125 = v125(v126)
		v124 = v125
		v125 = nil
		v126 = _FH_NV
		local v493 = v489

		local function v494()
			local v1573
			v1573 = not (209 == string.byte("JaT", 1, nil))
			if v1573 then
				v1573 = 420
			end
			local v1574
			repeat
				if not v1573 then
					v1573 = string.unpack(">i8", "\0\0\0\0\0\0\0#")
				end
				v1574 = not (v1573 == 14)
				v1574 = v1574 and string.byte("\196L", 1, nil) or 117
				v1573 = nil
			until v121
			return
		end

		v126 = v126(v494)
		v125 = v126
		v126 = nil
		local v495 = v489

		v127 = function()
			while not v121 do
			end
			local v1575 = v122
			if v1575 and v1575 then
				v495.set(true)
			end
		end

		v126 = _FH_NV(v127)
		local v496 = v490
		local v497 = LocalPlayer2

		local function v498(...)
			if not (nil)(nil, "Tool") then
				return
			end
			local v1576
			v1576 = not (bit32.bnot(223) == 308)
			v1576 = v1576 and 206 or 148
		end

		v127 = nil
		v128 = _FH_NV
		local v499 = LocalPlayer2
		local v500 = v498

		local function v501(...)
			local Backpack = v499:WaitForChild("Backpack", 5)
			local v1577, v1578, v1579
			v1579, v1578, v1577 = ipairs((nil).GetChildren(nil))
			local v1580 = v1577
			while true do
				local v1581
				v1580, v1581 = v1579(v1578, v1580)
				if v1580 == nil then
					break
				else
					(nil)(nil)
					v1577 = v1581
				end
			end
			if Backpack then
				local v1582, v1583
				v1583, v1582, v1577 = ipairs(Backpack:GetChildren())
				local v1584 = v1577
				while true do
					local v1585
					v1584, v1585 = v1583(v1582, v1584)
					if v1584 == nil then
						break
					else
						(nil)(nil)
						v1577 = v1585
					end
				end
				Backpack.ChildAdded:Connect(v1577)
			end
			;(nil).ChildAdded:Connect(v1577)
		end

		v128 = v128(v501)
		v127 = v128
		v128 = 0
		local v502 = v489

		local function v503()
			if v128 < 0.2 then
				return
			end
			local v1586 = v124()
			if v1586 and not v121 then
				v125("poll")
			elseif not (v1586 or not v121) then
				v126("poll")
			end
			local v1587 = v121
			if v1587 and v1587 and v502.userEnabled then
				v502.set(false)
			end
		end

		GetService3.Heartbeat:Connect(_FH_NV(v503))
		local v504 = v489

		local function v505()
			local v1588
			v1588 = string.byte("\\\249\149\226\195", 3, nil) <= 300
			if v1588 then
				v1588 = 210
			end
			while true do
				if not v1588 then
					v1588 = 173
				end
				string.unpack("<i8", "U\0\0\0\0\0\0\0")
				v1588 = nil
			end
		end

		LocalPlayer2.CharacterAdded:Connect(v505)
		local spawn = task.spawn
		local v506 = LocalPlayer2

		local function v507()
			task.wait(0.3)
			if v506.Character then
			end
		end

		spawn(_FH_NV(v507))

		local function v508(...)
			local Players = game:GetService("Players")
			local v1589 = Players.LocalPlayer
			local v1590 = nil
			if not v1589 then
				v1589 = Players.PlayerAdded:Wait()
				v1590 = nil
			end
			local v1591 = {}
			v1590 = {}
			v1590 = _FH_NV

			local function v1592(...)
				local v1599 = nil
				v1599 = v1599 and true or false
				v1591.enabled = v1599
			end

			v1590 = v1590(v1592)
			v1590 = nil
			local function v1593()
			end
			local Character4 = v1589.Character
			local v1594 = Character4
			local v1595 = nil
			if Character4 then
				local spawn8 = task.spawn
				spawn8(nil, v1589.Character)
				v1594 = spawn8
				v1595 = nil
			end
			v1594 = table
			v1594 = v1594.insert
			v1595 = v1591.conns
			local function v1596()
			end
			v1589.CharacterAdded:Connect(_FH_NV(v1596))
			v1594()
			v1594 = nil
			v1595 = 0
			local v1597 = v1589

			local function v1598(...)
				local _leave23 = false
				local v1600 = nil
				local v1601 = v64()
				if not v1601 then
					if not v1591.enabled then
						return
					end
					if v1595 < 0.1 then
						return
					end
					v1601 = v1597.Character
					if not v1600 then
						_leave23 = true
					end
				end
				if not _leave23 then
					v1600 = v1601:FindFirstChildOfClass("Humanoid")
				end
				if not v1600 then
					return
				end
				if v1600.Health < v1600.MaxHealth then
					local v1602 = v1600

					local function v1603()
						v1602.Health = v1602.MaxHealth
					end

					pcall(v1603)
				end
			end

			return (RunService.Heartbeat:Connect(_FH_NV(v1598)))
		end

		v509 = v508()
		_G._FH_REG_AntiDie = v509
		v509.set(true)
		local v510 = v509

		local function v511()
			local LocalPlayer9 = game:GetService("Players").LocalPlayer
			while true do
				local function v1604(...)
					if not v510.enabled then
						v510.set(true)
					end
					local Character5 = LocalPlayer9.Character
					if Character5 then
						local _ = -464878 + (bit32.lshift(
							string.unpack(">i8", "\0\0\0\0\0\0\1\212"),
							10
						) - 37) + -14315
						local Humanoid = Character5:FindFirstChildOfClass("Humanoid")
						if nil then
							local function v1606()
								string.len("\204")
								local v1611 = Humanoid
								v1611(v1611, Enum.HumanoidStateType.Dead, false)
							end

							pcall(_FH_NV(v1606))

							local function v1607()
								Humanoid.BreakJointsOnDeath = false
							end

							pcall(_FH_NV(v1607))

							local function v1608()
								Humanoid.RequiresNeck = false
							end

							pcall(_FH_NV(v1608))
							if Humanoid.Health <= 0 then
								local function v1609()
									local v1612
									v1612 = not not true
									if v1612 then
										v1612 = 150
									end
									while true do
										if not v1612 then
											v1612 = string.len("U\206")
										end
										v1612 = nil
									end
								end

								pcall(_FH_NV(v1609))

								local function v1610()
									string.len("\167\163\137")
									Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
								end

								pcall(_FH_NV(v1610))
							end
						end
					end
				end

				local function v1605()
				end
				xpcall(v1604, _FH_NV(v1605))
				task.wait(2)
			end
		end

		task.spawn(v511)

		local function v512(...)
			local game6 = game
			local UserInputService2 = game6:GetService("UserInputService")
			local Players2 = game6:GetService("Players")
			local v1613 = Players2.LocalPlayer
			local v1614 = nil
			if not v1613 then
				v1613 = Players2.PlayerAdded:Wait()
				v1614 = nil
			end
			local v1615 = {
				enabled = false,
				jumpConn = nil,
				fallConn = nil,
				holdConn = nil,
				holdBeginConn = nil,
				holdEndConn = nil
			}
			local v1616 = v1613

			local function v1617(...)
				if v1615.jumpConn then
					return
				end

				local function v1620()
					if not v1615.enabled then
						return
					end
					local Character6 = v1616.Character
					if not Character6 then
						return
					end
					local HumanoidRootPart = Character6:FindFirstChild("HumanoidRootPart")
					if HumanoidRootPart then
						os.clock()
						Vector3.new(
							HumanoidRootPart.Velocity.X,
							65,
							HumanoidRootPart.Velocity.Z
						)
					end
				end

				v1615.jumpConn = UserInputService2.JumpRequest:Connect(_FH_NV(v1620))
				return nil
			end

			v1614 = nil

			local function v1618()
				local v1621
				v1621 = bit32.countlz((string.unpack(">i8", "\0\0\0\0\0\0\1<"))) == 439
				v1621 = v1621 and 140 or 405
				for _, v1622 in ipairs((table.create(5))) do
					if v1615[v1622] then
						v1615[v1622]:Disconnect()
						v1615[v1622] = nil
					end
				end
			end

			_FH_NV(v1618)

			local function v1619(...)
				local v1623 = nil
				v1623 = v1623 and true or false
				v1615.enabled = v1623
				local enabled = v1615.enabled
				if enabled then
					enabled()
				else
					v1614()
				end
			end

			v1615.set = _FH_NV(v1619)
			return v1615
		end

		v513 = v512()
		v122 = {}

		v123 = function(...)
			local v1624, v1625, v1626, v1627, v1628, v1629, v1630
			if not cloneref then
				v1624 = function(...)
					return nil
				end

				_FH_NV(v1624)
				v1625 = nil
				v1626 = nil
				v1627 = nil
				v1628 = nil
				v1629 = nil
				v1630 = nil
			end
			local game7 = game
			local GetService6 = game7.GetService
			local v1631 = v1624(GetService6(game7, "Players"))
			v1625 = "TeleportService"
			local v1632 = GetService6(game:GetService(v1625))
			local LocalPlayer10 = v1631.LocalPlayer
			v1625 = nil
			v1626 = pcall

			local function v1633(...)
				local v1638 = type(hookfunction)
				local v1639 = v1638
				local v1640 = nil
				if v1638 == "function" then
					v1639 = nil
					v1640 = "RemoteEvent"
					local v1641 = Instance.new(v1640)
					v1640 = false

					local function v1642(...)
						if v1640 then
							return
						end
						return v1639(nil)
					end

					local hookfunction2 = hookfunction

					local function v1643(...)
						if not (v1625 or typeof(nil) ~= "Instance" or
							not (nil).IsA(nil, "RemoteEvent")) then
							local sub = tostring((nil).Name):sub(1, nil)
							if sub == "RE/" then
								task.defer(sub)
							end
						end
						return v1639()
					end

					newcclosure(_FH_NV(v1643))
					hookfunction2()
					task.delay(12, v1642)

					local function v1644()
						v1641:Destroy()
					end

					pcall(_FH_NV(v1644))
				end
			end

			v1626(v1633)
			v1626 = "kick"
			v1626 = "rejoin"
			v1626 = false
			v1627 = nil
			v1628 = _FH_NV

			v1629 = function(...)
				local v1660, v1661, v1662
				v1662, v1661 = pcall(getconnections, v1660)
				if v1662 then
					v1660 = type(v1661)
					if v1660 == "table" then
						local v1663, v1664
						v1660, v1664, v1663 = ipairs(v1661)
						while true do
							local v1665
							v1663, v1665 = v1660(v1664, v1663)
							if v1663 == nil then
								break
							else
								local v1666 = type
								local Function = v1665.Function
								if v1666(Function) == "function" then
									table.insert(Function, v1665.Function)
								end
							end
						end
					end
				end
				return v1660
			end

			v1628 = v1628(v1629)
			v1627 = v1628
			v1628 = nil
			v1629 = _FH_NV
			v1630 = function()
			end
			v1629 = v1629(v1630)
			v1628 = v1629
			v1629 = nil
			v1630 = _FH_NV

			local function v1634(...)
				local v1667, v1668, v1669, v1670
				while true do
					v1670 = LocalPlayer10
					if v1670 then
						v1667 = LocalPlayer10
						local v1671 = "PlayerGui"
						local FindFirstChild3 = v1667:FindFirstChild(v1671)
						if v1667 then
							v1668 = "AdminPanel"
							v1667 = FindFirstChild3:FindFirstChild(v1668)
							v1671 = FindFirstChild3
						end
						if v1671 then
							v1669 = "AdminPanel"
							v1671 = v1667:FindFirstChild(v1669)
							v1668 = v1667
						end
						if v1668 then
							v1668 = v1671:FindFirstChild("Content")
							v1669 = v1671
						end
						if v1669 then
							v1669 = v1671:FindFirstChild("Profiles")
						end
						if not (v1668 and v1669) then
							return nil, nil
						end
						v1668:FindFirstChild("ScrollingFrame")
						v1669:FindFirstChild("ScrollingFrame")
					else
						break
					end
				end
				return v1670, v1667
			end

			v1630 = v1630(v1634)
			v1629 = v1630
			v1630 = 0
			local v1635 = {}
			local v1636 = {}

			local function v1637(...)
				local v1672 = tick()
				local v1673 = v1630
				local v1674
				v1674 = string.byte("\146\161\248", 1, nil) <= 26
				v1674 = v1674 and 10 or 188
				if v1672 - v1673 < 30 then
					return
				end
				if _G._FH_FireAdmin and _G._FH_FireAdmin(nil, "ragdoll") then
					return
				end
				if type(getconnections) ~= "function" then
					return
				end
				local v1675, v1676
				v1676, v1675 = v1629()
				if not (v1676 and v1675) then
					return
				end
				local Name2 = LocalPlayer10.Name
				local ragdoll = "ragdoll"
				if not (v1675:FindFirstChild(Name2) and v1676:FindFirstChild(ragdoll)) then
					return
				end
				if not v1635[Name2] then
					v1627(ragdoll)
				end
				if not v1636.ragdoll then
					v1627(ragdoll)
				end
				v1628(v1636.ragdoll)
				task.wait()
				v1628(v1635[Name2])
			end

			return (_FH_NV(v1637))
		end

		v123 = v123()
		v124 = _FH_yield
		v124()
		local v514 = v84

		v124 = function(...)
			local v1677, v1678, v1679, v1680
			if not cloneref then
				v1677 = function(...)
					return nil
				end

				_FH_NV(v1677)
				v1678 = nil
				v1679 = nil
				v1680 = nil
			end
			local game8 = game
			v1678 = game8
			local GetService8 = game8.GetService
			local v1681 = v1677(GetService8(v1678, "Workspace"))
			v1678 = game
			local v1682 = v1678
			v1678 = v1678.GetService
			v1679 = "Players"
			local v1683 = GetService8(v1678(v1682, v1679))
			v1678 = 70
			v1679 = nil
			v1680 = nil

			local function v1684()
				if not v514 then
					return 1
				end
				local v1686 = v1681.CurrentCamera
				if v1686 then
					string.unpack(">i8", "\0\0\0\0\0\0\0\137")
					v1686 = v1681.CurrentCamera.ViewportSize
				end
				if not v1686 then
					return 0.7
				end
				local v1687 = math.min(v1686.X, v1686.Y)
				if v1687 < 400 then
					return 0.8
				end
				if v1687 < 600 then
					return 0.88
				end
				if v1687 < 800 then
					return 0.94
				end
				return 1
			end

			_FH_NV(v1684)

			local function v1685(...)
				local v1688 = nil

				local function v1689(...)
					local v1690 = tonumber(nil)
					local v1691 = v1690
					if not v1690 then
						v1691 = v1678
					end

					local function v1692(...)
						local v1693 = nil

						local function v1694(...)
							if v514 and v1691 < 0.1 then
								return
							end
							local v1695 = math.max(nil, 10)
							local v1696 = nil

							local function v1697()
								if 0 < v1696.CameraMinZoomDistance then
									v1696.CameraMinZoomDistance = 0
								end
							end

							pcall(v1697)
							local v1698 = nil

							local function v1699()
								local _ = 10670 + bit32.countlz(string.byte("a\184\223", 1, 2) - 8) + -10694
								v1698.CameraMaxZoomDistance = v1698.CameraMaxZoomDistance
							end

							pcall(v1699)
						end

						if pcall(v1694) then
							return
						end
					end

					RunService.RenderStepped:Connect(_FH_NV(v1692))
				end

				pcall(v1689)
			end

			return v1685
		end

		v124 = v124()
		v125 = _FH_yield
		v125()

		v125 = function(...)
			local v1700, v1701, v1702, v1703, v1704, v1705, v1706
			if not cloneref then
				v1700 = function(...)
					local _ = -272 + (bit32.lshift(string.unpack(">i8", "\0\0\0\0\0\0\1\r"), 4) + 244) + -4064
					return nil
				end

				_FH_NV(v1700)
				v1701 = nil
				v1702 = nil
				v1703 = nil
				v1704 = nil
				v1705 = nil
				v1706 = nil
			end
			local game9 = game
			v1701 = game9
			local GetService9 = game9.GetService
			v1702 = "Players"
			local v1707 = v1700(GetService9(v1701, v1702))
			v1701 = game
			v1702 = v1701
			v1701 = v1701.GetService
			v1703 = "Workspace"
			local v1708 = GetService9(v1701(v1702, v1703))
			v1701 = false
			v1702 = {}
			v1703 = false
			local v1709 = {}
			v1704 = nil

			local function v1710(...)
				if not (nil).IsA(nil, "Model") then
					return nil
				end
				local Humanoid2 = (nil).FindFirstChildOfClass(nil, "Humanoid")
				if not Humanoid2 then
					return nil
				end
				for _, v1717 in ipairs(v1707:GetPlayers()) do
					if v1717.Character and v1717.Character:FindFirstChildOfClass("Humanoid") then
						local DisplayName2 = v1717.Character:FindFirstChildOfClass("Humanoid").DisplayName
						if DisplayName2 == Humanoid2.DisplayName then
							return DisplayName2
						end
					end
				end
				return nil
			end

			v1704 = _FH_NV(v1710)

			local function v1711(...)
				local CloneHighlight = (nil):FindFirstChild("CloneHighlight")
				if CloneHighlight then
					CloneHighlight:Destroy()
				end
				local v1718 = "Head"
				local FindFirstChild4 = (nil):FindFirstChild(v1718)
				if v1709[nil] then
					local pcall13 = pcall
					v1718 = _FH_NV
					local v1719 = nil

					local function v1720(...)
						local _ = 10079 + bit32.bor(
							bit32.lrotate(string.byte("\23", 1, nil), 2),
							310,
							34
						) + -10460
						v1709[nil](nil)
					end

					pcall13(v1718(v1720))
					v1709[nil] = nil
				end
				local v1721 = v1704(v1718)
				Instance.new("Highlight")
				Color3.fromRGB(255, 0, 0)
				Color3.fromRGB(0, 0, 0)
				local v1722, v1723
				if FindFirstChild4 then
					local Humanoid3 = (nil):FindFirstChildOfClass("Humanoid")
					if nil then
						v1723 = Humanoid3.DisplayName
					else
						v1723 = nil
					end
					if not v1723 then
						v1723 = ""
					end
					local v1724 = ""
					if v1721 then
						v1724 = v1721.Name
						if v1723 == "" then
							v1723 = v1721.DisplayName
						end
					end
					v1722 = not (v1724 == "")
					if not v1722 then
						v1722 = not (v1723 == "")
					end
					if not v1722 then
						v1722 = "?"
					end
					string.format("sab %s's clone", v1722)
					local BillboardGui = Instance.new("BillboardGui")
					UDim2.new(0, 240, 0, 40)
					Vector3.new(0, 3, 0)
					local v1725 = v1707.LocalPlayer
					if v1725 then
						v1725 = v1707.LocalPlayer:FindFirstChildOfClass("PlayerGui")
					end
					Instance.new("TextLabel")
					UDim2.new(1, 0, 1, 0)
					Color3.fromRGB(255, 255, 255)
					Color3.fromRGB(0, 0, 0)
					v1709[nil] = BillboardGui
				end
			end

			local function v1712(...)
				local v1726, v1727, v1728
				v1728, v1727, v1726 = pairs(v1709)
				while true do
					local v1729 = v1727
					while true do
						local v1730
						v1726, v1730 = v1728(v1727, v1726)
						if v1726 == nil then
							break
						else
							local v1731 = v1730

							local function v1732()
								local _ = 26459 + (string.byte("C#", 1, nil) + 291 + string.byte("\179", 1, 1)) + -26864
							end

							pcall(_FH_NV(v1732))
							v1709[v1726] = nil
							v1729 = v1726
						end
					end
					local v1733, v1734
					v1728, v1734, v1733 = ipairs(v1729:GetChildren())
					v1727, v1726 = v1728(v1734, v1733)
					if v1727 == nil then
						return
					else
						v1726:IsA("Model")
					end
				end
			end

			v1705 = nil

			v1706 = function(...)
				local v1735 = nil
				while v1701 do
					local _, _
					_, v1735, _ = ipairs(v1735:GetChildren())
					if not (nil <= nil) then
						return
					end
				end
			end

			v1705 = _FH_NV(v1706)

			v1706 = function()
				local v1736 = false
				while task.wait(0.5) do
					local v1737 = v64()
					if v1737 or v1737 ~= _G._FH_GAMMA_GEN then
						break
					end
					if v1701 then
						local LocalPlayer13 = v1707.LocalPlayer
						if LocalPlayer13 then
							local Name3 = LocalPlayer13.Name
							local v1738 = false
							for _, v1739 in ipairs(v1708:GetChildren()) do
								if v1739:IsA("Model") and v1739.Name == Name3 .. "_Clone" then
									v1738 = true
									break
								end
							end
							if v1736 and not v1738 then
								local function v1740()
								end
								task.delay(30, _FH_NV(v1740))
								v1705()
							end
							v1736 = v1738
						end
					else
						v1736 = false
					end
				end
			end

			task.spawn(v1706)

			local function v1713()
				local v1741 = v1712
				v1741()
				v1741 = v1708.ChildAdded
				local v1742 = v1741
				v1741 = v1741.Connect

				local function v1743(...)
					local v1745 = v1701
					if v1745 then
						local bxor = bit32.bxor
						local v1746 = true
						v1746 = v1746 and 11 or 398
						local _ = 23666 + bxor(v1746, (string.len("\r&"))) + -23605
						if v1745(nil, "Model"):find("_Clone") then
							local wait3 = task.wait
							wait3(0.1)
							wait3(0.1)
						end
					end
				end

				v1741 = v1741(v1742, _FH_NV(v1743))
				v1702.added = v1741
				v1741 = 0

				local function v1744(...)
					local v1747 = v64()
					if not v1747 then
						local _FH_GAMMA_GEN2 = _G._FH_GAMMA_GEN
						if v1747 == _FH_GAMMA_GEN2 then
							if not v1701 then
								return
							end
							if v1741 < 0.5 then
								return
							end
							for _, v1748 in ipairs(_FH_GAMMA_GEN2:GetChildren()) do
								if v1748:IsA("Model") and v1748.Name:find("_Clone") then
									local CloneHighlight2 = v1748:FindFirstChild("CloneHighlight")
									if not CloneHighlight2 then
										CloneHighlight2(v1748)
									end
								end
							end
							return
						end
					end
					if v1702.hb then
						v1702.hb:Disconnect()
					end
				end

				v1702.hb = RunService.Heartbeat:Connect(_FH_NV(v1744))
			end

			v1706 = nil

			local function v1714()
				for _, v1749 in pairs(v1702) do
					if v1749 then
						v1749:Disconnect()
					end
				end
				local _ = -3137332441 + bit32.bxor(
					bit32.rrotate(string.byte("\187", 1, nil), 8),
					113
				) + -6842
				;({})()
			end

			v1706 = _FH_NV(v1714)
			local v1715 = {}

			local function v1716(...)
				(nil)()
			end

			v1715.set = _FH_NV(v1716)
			return v1715
		end

		v125 = v125()
		v126 = _G
		v126._FH_REG_CloneESP = v125
		local v515 = v84

		v126 = function(...)
			local v1750, v1751, v1752
			if not cloneref then
				v1750 = function(...)
					return nil
				end

				_FH_NV(v1750)
				v1751 = nil
				v1752 = nil
			end
			local game10 = game
			local GetService10 = game10.GetService
			local v1753 = v1750(GetService10(game10, "Players"))
			v1751 = "Lighting"
			local v1754 = GetService10(game:GetService(v1751))
			local v1755 = {
				running = false,
				connections = {},
				originalMoveFunction = nil,
				controlsProtected = false,
				badLightingNames = {}
			}

			local function v1756(...)
				if not nil then
					return
				end
				if v1755.badLightingNames[(nil).Name] then
					local v1766 = nil

					local function v1767(...)
						local v1768
						v1768 = not (string.unpack(">i8", "\0\0\0\0\0\0\0\14") == string.byte("\206c", 2, 2))
						v1768 = v1768 and string.unpack("<i8", "\5\0\0\0\0\0\0\0") or 231
						v1766(nil)
					end

					pcall(_FH_NV(v1767))
				end
			end

			v1751 = nil

			local function v1757(...)
				local v1769
				for _, v1770 in ipairs(v1755.connections) do
					if typeof(v1769) == "RBXScriptConnection" then
						v1770:Disconnect()
						v1769 = v1770
					end
				end
				v1755.connections = {}
			end

			_FH_NV(v1757)

			local function v1758()
				if v1755.controlsProtected then
					return
				end

				local function v1771(...)
					local PlayerModule = "PlayerModule"
					if not v1753.LocalPlayer.PlayerScripts:FindFirstChild(PlayerModule) then
						return
					end
					local GetControls = require(PlayerModule):GetControls()
					if not GetControls then
						return
					end
					local originalMoveFunction = v1755.originalMoveFunction
					local v1772 = originalMoveFunction
					local v1773 = nil
					if not originalMoveFunction then
						v1772 = GetControls.moveFunction
						v1773 = nil
					end
					v1772 = nil
					v1773 = _FH_NV

					local function v1774()
						if v1755.originalMoveFunction then
							return v1755.originalMoveFunction()
						end
					end

					v1773 = v1773(v1774)
					v1773 = 0
					local insert9 = table.insert

					local function v1775(...)
						local v1776 = nil
						if not v1755.running then
							return
						end
						local v1777 = v1773
						v1776 = v1776 and 0.1 or 0.05
						local _ = 234 + (string.unpack(">i8", "\0\0\0\0\0\0\0\135") - string.byte("-", 1, nil) + 89) + -294
						if v1777 < v1776 then
							return
						end
						if GetControls.moveFunction == v1772 then
						end
					end

					RunService.Heartbeat:Connect(_FH_NV(v1775))
					insert9()
				end

				pcall(v1771)
			end

			local function v1759()
				local v1778
				v1778 = not not false
				v1778 = v1778 and 25 or 16
				local controlsProtected = v1755.controlsProtected
				if not controlsProtected then
					return
				end

				local function v1779()
					local v1780
					v1780 = not not false
					v1780 = v1780 and 395 or 171
					local PlayerModule2 = "PlayerModule"
					if not v1753.LocalPlayer.PlayerScripts:FindFirstChild(PlayerModule2) then
						return
					end
					if require(PlayerModule2)(PlayerModule2) and v1755.originalMoveFunction then
					end
				end

				controlsProtected(_FH_NV(v1779))
			end

			v1752 = nil

			local function v1760()
				local function v1781()
					if not (v1752 and v1752.Parent) then
						local PlayerScripts = v1753.LocalPlayer.PlayerScripts
						local Bee = PlayerScripts:FindFirstChild("Bee", true)
						if PlayerScripts then
							Bee:FindFirstChild("Buzzing")
						end
					end
					local v1782 = v1752
					if v1782 then
						local _ = 10309 + bit32.lshift(
							bit32.rshift(
								string.unpack("<i8", "v\0\0\0\0\0\0\0"),
								(string.unpack("<i8", "\5\0\0\0\0\0\0\0"))
							),
							0
						) + -10311
						if v1782:IsA("Sound") then
							v1782:Stop()
						end
					end
				end

				pcall(_FH_NV(v1781))
			end

			local v1761 = {
				"Inverse",
				"inverse",
				"Inverted",
				"inverted",
				"InverseControls",
				"FlipControls",
				"ReverseControls",
				"IsInverted",
				"isInverted",
				"ControlsInverted",
				"InvertMovement",
				"FlipMovement",
				"Reversed",
				"reversed",
				"flipcontrols",
				"reversecontrols"
			}

			local function v1762(...)
				local v1783
				if nil then
					v1783 = string.byte("\138", 1, 1) < 17
					v1783 = v1783 and 401 or 180
					if (nil).Parent then
						local v1784 = nil

						local function v1785(...)
							local v1786
							for _, _ in ipairs(v1761) do
								v1786 = v1786.GetAttribute
								if v1786 ~= nil then
									v1786 = v1786.SetAttribute
								end
							end
						end

						pcall(_FH_NV(v1785))
						return
					end
				end
			end

			local function v1763()
				local _ = -4294955424 + bit32.bnot(string.byte("\191n\24\130\212", 2, 5) + 3) + -11546
			end

			local function v1764()
				local function v1787(...)
					local v1788 = nil
					local LocalPlayer14 = v1753.LocalPlayer
					local Character8 = LocalPlayer14.Character
					if Character8 then
						v1788(nil)
						v1788 = Character8.FindFirstChild
						local v1789 = Character8
						while true do
							v1788 = v1788(v1789, "HumanoidRootPart")
							local Humanoid4 = "Humanoid"
							v1789 = Character8:FindFirstChildOfClass(Humanoid4)
							if v1788 then
								Character8(Humanoid4)
							end
							if not v1789 then
								Character8(Humanoid4)
								break
							end
						end
					end
					v1788(LocalPlayer14.PlayerScripts)
					local PlayerGui3 = "PlayerGui"
					if LocalPlayer14:FindFirstChildOfClass(PlayerGui3) then
						LocalPlayer14(PlayerGui3)
					end
				end

				pcall(_FH_NV(v1787))
			end

			local v1765 = {}

			function v1765.set(...)
				local v1790, v1791
				if nil then
					if v1755.running then
						return
					end
					v1755.running = true
					local v1792, v1793, v1794
					v1794, v1793, v1792 = ipairs(v48(nil))
					local v1795 = v1793
					while true do
						local v1796
						v1792, v1796 = v1794(v1793, v1792)
						v1791 = v1794
						v1790 = v1795
						if v1792 == nil then
							break
						else
							(nil)(v1796)
							v1795 = v1792
						end
					end
					v1791 = table
					v1791 = v1791.insert
					v1790 = v1755.connections

					local function v1797()
						local _ = 23376 + bit32.bxor(25, 40, (string.len("\221\""))) + -23425
					end

					v1754.DescendantAdded:Connect(_FH_NV(v1797))
					v1791()
					v1791 = v1758
					v1791()
					v1791()
					v1791 = 0
					v1790 = 0
					local insert10 = table.insert

					local function v1798()
						if not v1755.running then
							return
						end
						local v1804
						v1804 = bit32.band((string.byte("\128\193\176", 3, nil))) == 251
						v1804 = v1804 and 231 or string.len("\134\225")
					end

					RunService.Heartbeat:Connect(_FH_NV(v1798))
					insert10()
					local function v1799()
					end
					local LocalPlayer15 = v1753.LocalPlayer
					if LocalPlayer15 then
						local insert11 = table.insert
						local connections = v1755.connections

						local function v1800()
							task.wait(0.05)
							local running2 = v1755.running
							if not running2 then
								return
							end
							local _ = -3355426226 + bit32.bor((bit32.lrotate(281, 27))) + -16901
							running2()
							running2(0.05)
						end

						LocalPlayer15.CharacterAdded:Connect(_FH_NV(v1800))
						insert11()
						v1799(connections)
						if LocalPlayer15.Character then
							v1799(LocalPlayer15.Character)
						end
						v1799(LocalPlayer15.PlayerScripts)

						local function v1801(...)
							v1799((nil).FindFirstChildOfClass(nil, "PlayerGui"))
						end

						pcall(_FH_NV(v1801))
						local insert12 = table.insert

						local function v1802(...)
							if (nil)(nil, "PlayerGui") then
								v1799(nil)
							end
						end

						LocalPlayer15.ChildAdded:Connect(_FH_NV(v1802))
						insert12()
					end
				else
					local running = v1755.running
					if not running then
						return
					end
					v1755.running = false
					running()
					local v1803 = v1751
					v1803()
					v1791 = v1803
					v1790 = nil
				end
			end

			return v1765
		end

		v126 = v126()
		_G4 = _G
		v516 = spawn
	until not (_G4 < "_M")
	_G4.AntiBee = v126

	v126 = function(...)
		local Players3 = game:GetService("Players")
		game:GetService("UserInputService")
		local LocalPlayer16 = Players3.LocalPlayer
		local v1805, v1806, v1807
		if not LocalPlayer16 then
			local v1808 = {}

			local function v1809()
				local lrotate = bit32.lrotate
				local v1820
				v1820 = 355 <= string.len("\177\196")
				v1820 = v1820 and 511 or 511
				lrotate(v1820, 31)
			end

			v1808.set = _FH_NV(v1809)
			return v1808
		end
		local PlayerGui4 = LocalPlayer16:WaitForChild("PlayerGui")
		v1805 = false
		local v1810 = {}
		local v1811 = {}
		v1806 = nil
		v1807 = _FH_NV

		local function v1812(...)
			local _leave26 = false
			local v1821 = nil
			local v1822 = "TextLabel"
			local v1823 = (nil)(v1821, v1822)
			local v1824
			if not v1823 then
				v1822 = "TextButton"
				local v1825 = v1823(v1821, v1822)
				if not v1825 then
					v1822 = "TextBox"
					v1824 = v1825(v1821, v1822)
					if not v1824 then
						_leave26 = true
					end
				end
			end
			if not _leave26 then
				v1824 = string.lower(v1821)
				if v1821 == "Trade Machine" or v1822 == "Currently not available in your region" then
					v1821 = table.insert
				end
			end
			local v1826 = v1824(v1821, "ImageButton")
			if not v1826 then
				v1826 = v1826(v1821, "ImageLabel")
			end
			local ProximityPrompt = "ProximityPrompt"
			local v1827 = v1826(v1821, ProximityPrompt)
			if v1827 and (v1827 == "Trade Machine" or v1821 == "Trade Machine") then
				table.insert(v1821, ProximityPrompt)
			end
		end

		v1807 = v1807(v1812)
		v1806 = v1807
		v1807 = task
		v1807 = v1807.spawn

		local function v1813()
			task.wait()
		end

		v1807(_FH_NV(v1813))
		v1807 = PlayerGui4.DescendantAdded
		local v1814 = v1807
		v1807 = v1807.Connect

		local function v1815(...)
			local TextLabel6 = (nil)(nil, "TextLabel")
			local bnot = bit32.bnot
			local v1828 = false
			v1828 = v1828 and string.byte("\244", 1, 1) or 135
			bnot(v1828)
			if not TextLabel6 then
				local TextButton7 = TextLabel6(nil, "TextButton")
				if not TextButton7 then
					local TextBox3 = TextButton7(nil, "TextBox")
					if not TextBox3 then
						local ProximityPrompt2 = TextBox3(nil, "ProximityPrompt")
						if not ProximityPrompt2 then
							local ImageLabel3 = ProximityPrompt2(nil, "ImageLabel")
							if not (ImageLabel3 or ImageLabel3(nil, "ImageButton")) then
								return
							end
						end
					end
				end
			end
			v1806(nil)
		end

		v1807(v1814, _FH_NV(v1815))
		v1807 = nil

		local function v1816()
			local v1829, v1830, v1831
			v1831, v1830, v1829 = ipairs(v1810)
			local v1832 = v1830
			while true do
				local v1833
				v1829, v1833 = v1831(v1830, v1829)
				if v1829 == nil then
					break
				elseif v1833 and v1833.Parent then
					local v1834 = v1805
					if v1834 then
						v1834 = "Currently not available in your region"
					end
					local v1835 = v1805
					if v1835 then
						v1835 = Color3.fromRGB
					end
					if not v1835 then
						Color3.fromRGB(255, 255, 255)
					end
					v1832 = v1829
				else
					v1832 = v1829
				end
			end
			for _, v1836 in ipairs(v1832) do
				if v1836 and v1836.Parent then
				end
			end
		end

		v1807 = _FH_NV(v1816)

		local function v1817(...)
			local _ = 13521 + bit32.countrz(string.byte("-\11\20", 3, nil) + 125) + -13519
			if _G._FH_HideAdminBusy then
			end
			if _G._FH_HideAdminBusy then
				return
			end
			local v1837 = nil

			local function v1838(...)
				local v1839 = v1837[nil]
				bit32.rshift(329, 20)

				local function v1840(...)
					local function v1841()
						return game.Players.LocalPlayer.PlayerGui.TopbarStandard.Holders.Left
					end

					local _, v1842
					v1842, _ = pcall(_FH_NV(v1841))
					if not v1842 then
						return
					end
					local _ = 28668 + bit32.rshift(
						string.unpack(">i8", "\0\0\0\0\0\0\1\237") + string.unpack("<i8", "\217\0\0\0\0\0\0\0"),
						4
					) + -28710
					return nil
				end

				return
					v1839,
					v1840,
					_G._FH_HiddenAdminPanel,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil

			end

			task.spawn(v1838)
		end

		local v1818 = {}

		local function v1819()
			v1807()
		end

		v1818.set = _FH_NV(v1819)
		return v1818
	end

	v126 = v126()
	_G._M.HideAdmin = v126
	local v517 = v147
	local v518 = v150

	v126 = function(...)
		local Players4 = game:GetService("Players")
		game:GetService("RunService")
		local LocalPlayer17 = Players4.LocalPlayer
		if not LocalPlayer17 then
			local v1843 = {}

			local function v1844()
				bit32.rshift(9, 29)
			end

			v1843.set = _FH_NV(v1844)
			return v1843
		end
		local PlayerGui5 = LocalPlayer17:FindFirstChildOfClass("PlayerGui")
		local v1845 = LocalPlayer17
		local v1846, v1847, v1848, v1849, v1850, v1851, v1852, v1853
		local v1854 = nil
		if not PlayerGui5 then
			PlayerGui5 = LocalPlayer17:WaitForChild("PlayerGui", 5)
			v1845 = LocalPlayer17
			v1846 = 5
			v1847 = nil
			v1848 = nil
			v1849 = nil
			v1850 = nil
			v1851 = nil
			v1852 = nil
			v1853 = nil
			v1854 = nil
		end
		v1845 = false
		local v1855 = {}
		v1846 = nil
		v1847 = nil
		v1848 = _FH_NV

		v1849 = function(...)
			local v1872 = (nil).IsA(nil, "TextButton")
			if not v1872 then
				v1872 = (nil).IsA(nil, "TextLabel")
			end
			if not v1872 then
				return (nil).FindFirstChildWhichIsA(nil, "TextLabel", nil)
			end
			return v1872
		end

		v1848 = v1848(v1849)
		v1847 = v1848
		v1848 = nil
		v1849 = _FH_NV

		v1850 = function(...)
			local v1873, v1874, _
			_, v1874, v1873 = Color3.toHSV(nil)
			return Color3.fromHSV(nil, v1874 * 0.15, math.min(v1873 * 0.55, 0.32))
		end

		v1849 = v1849(v1850)
		v1848 = v1849
		v1849 = nil
		v1850 = nil

		local function v1856(...)
			local Name4 = LocalPlayer17.Name
			local DisplayName3 = LocalPlayer17.DisplayName
			for _, v1875 in ipairs((nil).GetChildren(nil)) do
				if v1875:IsA("GuiObject") then
					local TextLabel7 = v1875:FindFirstChildWhichIsA("TextLabel")
					if TextLabel7 then
						local Text = TextLabel7.Text
						if Text == Name4 or TextLabel7.Text == DisplayName3 then
							return Text
						end
					end
					local TextLabel8 = v1875:FindFirstChildWhichIsA("TextLabel", true)
					if TextLabel8 then
						local Text2 = TextLabel8.Text
						if Text2 == Name4 or TextLabel8.Text == DisplayName3 then
							return Text2
						end
					end
				end
			end
			return nil
		end

		v1850 = _FH_NV(v1856)

		local function v1857(...)
			if v1849 and v1849.Parent == nil then
				return
			end
			if v1849 then
				local function v1876(...)
					bit32.bnot(23)
					v1849(nil)
				end

				pcall(_FH_NV(v1876))
			end
			Instance.new("TextLabel")
			v1849.Name = "RegionLockBadge"
			v1849.Size = UDim2.new(0, 116, 0, 18)
			v1849.Position = UDim2.new(1, 4, 0.5, -9)
			v1849.BackgroundColor3 = Color3.fromRGB(42, 45, 54)
			v1849.BackgroundTransparency = 0.15
			v1849.Text = "Region Restricted"
			v1849.TextSize = 10
			v1849.TextColor3 = Color3.fromRGB(190, 194, 205)
			v1849.Font = Enum.Font.GothamMedium
			v1849.TextXAlignment = Enum.TextXAlignment.Center
			local v1877 = (nil).ZIndex + 10
			v1849.ZIndex = v1877
			v1849.Parent = nil
			v1877(v1849, 4)
			v1877(v1849, (nil).fromRGB(70, 74, 86), 0.8, 0.25)
		end

		local function v1858()
			if v1849 then
				local function v1878()
					v1849:Destroy()
				end

				pcall(_FH_NV(v1878))
			end
		end

		local function v1859(...)
			if v1855[nil] then
				return
			end
			local v1879 = v1847(nil)
			local BackgroundColor3 = (nil).BackgroundColor3
			local v1880 = (nil).Active
			v1880 = v1880 and v1879.Text or nil
			if v1880 then
				v1880 = v1879.TextColor3
			end
			local v1881 = nil
			local v1882 = v1848(BackgroundColor3)

			local function v1883()
				v1881.AutoButtonColor = false
				v1881.Active = false
			end

			pcall(_FH_NV(v1883))
			if v1879 then
				local function v1884()
					v1879.Text = "Unavailable"
					local v1886 = Color3.fromRGB
					while true do
						local v1887 = false
						v1887 = v1887 and 10 or 152
						string.byte("K\155\189v", 1, nil)
						v1886 = v1886(160, 160, 170)
						v1879.TextColor3 = v1886
					end
				end

				pcall(_FH_NV(v1884))
			end
			local TextButton8 = Instance.new("TextButton")
			UDim2.new(1, 0, 1, 0)
			local function v1885()
			end
			TextButton8.MouseButton1Click:Connect(_FH_NV(v1885))
			Instance.new("TextLabel")
			Vector2.new(0.5, 0)
			UDim2.new(0.5, 0, 1, 2)
			UDim2.new(1, -4, 0, 12)
			Color3.fromRGB(140, 140, 150)
			v1855[nil] = {}
		end

		local function v1860(...)
			local v1888 = v1855[nil]
			if not v1888 then
				return
			end

			local function v1889()
				local v1893
				v1893 = not (string.unpack("<i8", "M\0\0\0\0\0\0\0") + string.unpack("<i8", "H\1\0\0\0\0\0\0") == string.unpack("<i8", "\198\0\0\0\0\0\0\0"))
				v1893 = v1893 and string.unpack("<i8", "\183\0\0\0\0\0\0\0") or 4
			end

			pcall(_FH_NV(v1889))
			if v1888.lblObj and v1888.originalText ~= nil then
				local function v1890()
					local _ = 5989 + bit32.countlz((bit32.bnot(490))) + -5983
				end

				pcall(_FH_NV(v1890))
			end

			local function v1891()
				v1888.blocker:Destroy()
			end

			pcall(_FH_NV(v1891))

			local function v1892()
				v1888.note:Destroy()
			end

			pcall(_FH_NV(v1892))
			v1855[nil] = nil
		end

		v1851 = nil
		v1852 = _FH_NV

		local function v1861()
			for _, _ in pairs(v1855) do
			end
		end

		v1852 = v1852(v1861)
		v1851 = v1852
		v1852 = nil
		local v1862 = PlayerGui5

		local function v1863()
			if not v1862 then
				return nil
			end
			local TradePlayerList = v1862:FindFirstChild("TradePlayerList")
			if not TradePlayerList then
				return nil
			end
			local TradePlayerList2 = TradePlayerList:FindFirstChild("TradePlayerList")
			if not TradePlayerList2 then
				return nil
			end
			local Sections = TradePlayerList2:FindFirstChild("Sections")
			if not Sections then
				return nil
			end
			local Players5 = Sections:FindFirstChild("Players")
			if Players5 then
				return Players5:FindFirstChild("List")
			end
			return nil
		end

		v1852 = _FH_NV(v1863)

		local function v1864(...)
			local v1894, v1895, v1896, v1897
			v1897, v1896, v1895 = ipairs((nil).GetChildren(nil))
			local v1898 = v1896
			local v1899 = v1895
			local v1900
			while true do
				local v1901
				v1899, v1901 = v1897(v1896, v1899)
				if v1899 == nil then
					break
				elseif v1901:IsA("GuiObject") and not v1855[v1901] then
					local Fill = v1901:FindFirstChild("Fill")
					if v1901 then
						v1894 = "Send"
						v1900 = Fill:FindFirstChild(v1894)
					else
						v1900 = v1901
					end
					if v1900 then
						task.spawn(v1894, v1901, nil)
						v1895 = v1901
						v1898 = v1899
					else
						v1895 = v1901
						v1898 = v1899
					end
				else
					v1895 = v1901
					v1898 = v1899
				end
			end
			if v1850(v1898) then
				v1898(v1895)
			else
				v1858()
			end

			local function v1902(...)
				local v1903 = nil
				if not v1845 then
					return
				end
				task.wait(0.1)
				local Fill2 = (nil):FindFirstChild("Fill")
				local v1904
				if nil then
					v1903 = "Send"
					v1904 = Fill2:FindFirstChild(v1903)
				else
					v1904 = nil
				end
				if v1904 then
					task.spawn(v1903, nil, nil)
				end
				local v1905 = nil

				local function v1906()
					local IsDescendantOf = v1905:IsDescendantOf(game)
					if not IsDescendantOf then
						IsDescendantOf(v1905)
					end
				end

				;(nil).AncestryChanged:Connect(_FH_NV(v1906))
				local Name5 = LocalPlayer17.Name
				local DisplayName4 = LocalPlayer17.DisplayName
				local v1907 = "TextLabel"
				local FindFirstChildWhichIsA = (nil):FindFirstChildWhichIsA(v1907)
				if not FindFirstChildWhichIsA then
					(nil):FindFirstChildWhichIsA("TextLabel", true)
					v1907 = nil
				end
				local _leave27 = false
				if FindFirstChildWhichIsA then
					if FindFirstChildWhichIsA.Text ~= Name5 then
						v1907 = FindFirstChildWhichIsA.Text
						if v1907 ~= DisplayName4 then
							_leave27 = true
						end
					end
					if not _leave27 then
						v1857(v1907)
					end
				end
			end

			;(nil).ChildAdded:Connect(v1902)
		end

		local function v1865()
			while true do
			end
		end

		v1853 = nil
		v1854 = nil

		local function v1866(...)
			if v1854 then
				return
			end
			local TextLabel9 = "TextLabel"
			local v1908 = (nil).FindFirstChildWhichIsA(nil, TextLabel9, true)
			local v1909 = nil
			local v1910 = v1848(TextLabel9)

			local function v1911()
				v1909.AutoButtonColor = false
				v1909.Active = false
			end

			pcall(_FH_NV(v1911))
			if v1908 then
				local function v1912()
					v1908.Text = "🔒 Unavailable"
					v1908.TextColor3 = Color3.fromRGB(160, 160, 170)
				end

				pcall(_FH_NV(v1912))
			end
			local TextButton9 = Instance.new("TextButton")
			UDim2.new(1, 0, 1, 0)
			local function v1913()
			end
			TextButton9.MouseButton1Click:Connect(_FH_NV(v1913))
			local Parent2 = (nil).Parent
			while Parent2 and Parent2.Name ~= "Prompt" do
				Parent2 = Parent2.Parent
			end
			if Parent2 then
				local Frame29 = Instance.new("Frame")
				UDim2.new(1, -16, 0, 50)
				UDim2.new(0, 8, 0, 8)
				Color3.fromRGB(28, 29, 34)
				local UICorner6 = Instance.new("UICorner")
				UICorner6.CornerRadius = UDim.new(0, 8)
				UICorner6.Parent = Frame29
				Instance.new("UIStroke")
				Color3.fromRGB(58, 60, 68)
				Instance.new("TextLabel")
				UDim2.new(0, 26, 0, 26)
				UDim2.new(0, 10, 0.5, -13)
				Color3.fromRGB(255, 196, 87)
				local TextLabel10 = Instance.new("TextLabel")
				TextLabel10.Name = "Title"
				TextLabel10.Size = UDim2.new(1, -52, 0, 16)
				TextLabel10.Position = UDim2.new(0, 44, 0, 8)
				TextLabel10.BackgroundTransparency = 1
				TextLabel10.Text = "Trade Unavailable"
				TextLabel10.Font = Enum.Font.GothamBold
				TextLabel10.TextSize = 13
				TextLabel10.TextColor3 = Color3.fromRGB(245, 246, 250)
				TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel10.TextYAlignment = Enum.TextYAlignment.Center
				TextLabel10.ZIndex = Frame29.ZIndex + 1
				TextLabel10.Parent = Frame29
				local TextLabel11 = Instance.new("TextLabel")
				TextLabel11.Name = "WarnText"
				TextLabel11.Size = UDim2.new(1, -52, 0, 22)
				TextLabel11.Position = UDim2.new(0, 44, 0, 24)
				TextLabel11.BackgroundTransparency = 1
				TextLabel11.Text = "Trading is unavailable in your region due to local restrictions. (Error Code: 280)"
				TextLabel11.Font = Enum.Font.Gotham
				TextLabel11.TextSize = 10
				TextLabel11.TextWrapped = true
				TextLabel11.TextColor3 = Color3.fromRGB(170, 173, 184)
				TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel11.TextYAlignment = Enum.TextYAlignment.Top
				TextLabel11.ZIndex = Frame29.ZIndex + 1
				TextLabel11.Parent = Frame29
			end
			Instance.new("TextLabel")
			Vector2.new(0.5, 0)
			UDim2.new(0.5, 0, 1, 2)
			UDim2.new(1, -4, 0, 12)
			Color3.fromRGB(140, 140, 150)
		end

		local function v1867(...)
			if not v1854 then
				return
			end
			local v1914 = v1854
			local function v1915()
			end
			pcall(_FH_NV(v1915))
			local lbl3 = v1914.lbl
			local v1916 = false
			v1916 = v1916 and 71 or string.unpack("<i8", "U\0\0\0\0\0\0\0")
			string.unpack("<i8", "\187\1\0\0\0\0\0\0")
			if lbl3 and false then
				local function v1917()
					while true do
						local _ = 22086 + (string.len("`wo\239") + 12 - string.unpack("<i8", "U\0\0\0\0\0\0\0")) + -22016
					end
				end

				pcall(_FH_NV(v1917))
			end

			local function v1918()
				v1914.blocker:Destroy()
			end

			pcall(_FH_NV(v1918))

			local function v1919()
				local _ = 17751 + bit32.countlz(string.unpack("<i8", "Z\1\0\0\0\0\0\0") - 331) + -17778
			end

			pcall(_FH_NV(v1919))

			local function v1920()
				v1914.note:Destroy()
			end

			pcall(_FH_NV(v1920))
		end

		local v1868 = PlayerGui5

		local function v1869(...)
			local _ = 22584 + bit32.rrotate(57 - string.len("\219"), 25) + -29689
			local v1921
			v1921 = nil <= task

			local function v1922(...)
				local v1923, v1924, v1925
				while v1845 do
					v1923(v1924)
					v1924 = v1925.AncestryChanged
					v1923 = v1924.Wait
					v1923(v1924)
					v1923()
					v1925 = 0.4
					task.wait(v1925)
				end
			end

			v1921(_FH_NV(v1922))
		end

		local v1870 = {}

		local function v1871(...)
			(nil)()
			;(nil)()
		end

		v1870.set = _FH_NV(v1871)
		return v1870
	end

	v126 = v126()
	_G._M.TradeRegionBlock = v126
	local v519 = v178

	v126 = function(...)
		local v1926, v1927, v1928, v1929, v1930, v1931, v1932, v1933
		local v1934 = nil
		if not cloneref then
			v1926 = function(...)
				local _ = 3729 + (bit32.bxor((string.len(""))) - 189) + -3469
				return nil
			end

			_FH_NV(v1926)
			v1927 = nil
			v1928 = nil
			v1929 = nil
			v1930 = nil
			v1931 = nil
			v1932 = nil
			v1933 = nil
			v1934 = nil
		end
		local game11 = game
		local GetService11 = game11.GetService
		v1927 = "Players"
		local v1935 = v1926(GetService11(game11, v1927))
		local game12 = game
		v1927 = game12
		v1928 = "Workspace"
		local v1936 = GetService11(game12.GetService(v1927, v1928))
		local LocalPlayer18 = v1935.LocalPlayer
		v1927 = false
		v1928 = nil
		v1929 = nil
		v1930 = nil
		local v1937 = {}
		local v1938 = table.create(6)
		v1931 = "Stealing"
		v1932 = "stolen"
		v1933 = "isStealing"
		v1934 = "IsSteal"
		v1938[1] = v1931
		v1938[2] = "steal"
		v1938[3] = v1932
		v1938[4] = v1933
		v1938[5] = v1934
		v1938[6] = "issteal"
		v1931 = nil

		v1932 = function()
			return false
		end

		v1931 = _FH_NV(v1932)

		local function v1939()
			local Frame30 = Instance.new("Frame")
			UDim2.new(0, 90, 0, 150)
			local TextLabel12 = Instance.new("TextLabel")
			TextLabel12.Name = "StealArrow"
			TextLabel12.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel12.Position = UDim2.new(0.5, 0, 0, -4)
			TextLabel12.Size = UDim2.new(0, 90, 0, 70)
			TextLabel12.BackgroundTransparency = 1
			TextLabel12.Text = "⬇"
			TextLabel12.TextColor3 = Color3.fromRGB(255, 40, 40)
			TextLabel12.TextScaled = true
			TextLabel12.Font = Enum.Font.GothamBlack
			TextLabel12.TextStrokeTransparency = 0
			TextLabel12.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel12.Visible = false
			TextLabel12.ZIndex = 55
			TextLabel12.Parent = Frame30
			Instance.new("UIStroke")
			Color3.fromRGB(0, 0, 0)

			local function v1943()
				local v1944 = tick()
				while TextLabel12 and TextLabel12.Parent do
					local v1945 = tick() - v1944
					if TextLabel12.Visible then
						local v1946 = math.sin(v1945 * 6)
						TextLabel12.Position = UDim2.new(0.5, 0, 0, -4 + v1946 * 6)
						local v1947 = 0.5 + 0.5 * math.abs(math.sin(v1945 * 4))
						TextLabel12.TextColor3 = Color3.fromRGB(
							255,
							40 + math.floor(v1947 * 60),
							40 + math.floor(v1947 * 60)
						)
					end
					task.wait(0.03)
				end
			end

			task.spawn(_FH_NV(v1943))
			Instance.new("ImageLabel")
			Vector2.new(0.5, 0)
			UDim2.new(0.5, 0, 0, 65)
			UDim2.new(0, 56, 0, 56)
			Instance.new("TextLabel")
			Vector2.new(0.5, 0)
			UDim2.new(0.5, 0, 0, 124)
			UDim2.new(0, 90, 0, 20)
			Color3.fromRGB(255, 255, 255)
			Color3.fromRGB(0, 0, 0)
			return {}
		end

		v1932 = nil
		v1933 = _FH_NV

		v1934 = function()
			if v1930 and v1930.Parent then
				return
			end
			Instance.new("Frame")
			v1930.AnchorPoint = Vector2.new(0.5, 1)
			v1930.Position = UDim2.new(0.5, 0, 0.92, 0)
			v1930.Size = UDim2.new(0, 10, 0, 150)
			local v1948 = Enum.AutomaticSize.X
			v1930.AutomaticSize = v1948
			v1930.BackgroundTransparency = 1
			v1930.Visible = false
			v1930.ZIndex = 50
			v1930.Parent = v1948
			Instance.new("UIListLayout")
			UDim.new(0, 6)
			for _ = 1, 5 do
				local _ = 3310 + bit32.band((bit32.band(14, math.modf(3.141592653589793), 3))) + -3306
			end
			Instance.new("TextLabel")
			v1929.LayoutOrder = 6
			v1929.Size = UDim2.new(0, 10, 0, 150)
			v1929.AutomaticSize = Enum.AutomaticSize.X
			v1929.BackgroundTransparency = 1
			v1929.TextColor3 = Color3.fromRGB(255, 70, 70)
			v1929.TextSize = 26
			v1929.Font = Enum.Font.GothamBold
			v1929.TextXAlignment = Enum.TextXAlignment.Left
			v1929.TextYAlignment = Enum.TextYAlignment.Center
			v1929.TextStrokeTransparency = 0.3
			v1929.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			v1929.ZIndex = 50
			v1929.Parent = v1930
		end

		v1933 = v1933(v1934)
		v1932 = v1933
		v1933 = nil
		v1934 = _FH_NV

		local function v1940()
			local v1949
			v1949 = not not false
			v1949 = v1949 and 442 or 410
			string.byte("<B\2036g", 1, 1)
			local Plots5 = v1936:FindFirstChild("Plots")
			if not Plots5 then
				return nil
			end
			for _, v1950 in ipairs(Plots5:GetChildren()) do
				local PlotSign = v1950:FindFirstChild("PlotSign")
				if PlotSign and PlotSign:FindFirstChild("YourBase") and
					PlotSign.YourBase.Enabled then
					return v1950
				end
			end
			return nil
		end

		v1934 = v1934(v1940)
		v1933 = v1934
		v1934 = nil

		local function v1941()
			local v1951 = v1933()
			if v1951 then
				return v1951:FindFirstChild("StealHitbox", true)
			end
			return nil
		end

		v1934 = _FH_NV(v1941)
		local v1942 = {}

		function v1942.set(...)
			while not nil do
			end
			local v1952 = nil
			if not nil then
				if v1930 then
					v1930.Visible = false
				end
				return
			end
			v1952 = v1932
			v1952()
			v1952 = 0

			local function v1953(...)
				local v1954 = nil
				if not v1927 then
					if v1930 then
						v1930.Visible = false
					end
					return
				end
				if v1952 < 0.25 then
					return
				end
				local v1955 = v1934()
				if not v1955 then
					if v1930 then
						v1930.Visible = false
					end
					return
				end
				local CFrame2 = v1955.CFrame
				local Size = v1955.Size
				local v1956 = Size.X
				local v1957 = Size.Z
				local v1958 = {}
				for _, v1959 in ipairs(v1935:GetPlayers()) do
					if not (v1959 == v1954 or not v1959.Character) then
						v1954 = v1959.Character:FindFirstChild("HumanoidRootPart")
						if v1954 then
							local PointToObjectSpace = CFrame2:PointToObjectSpace(v1954.Position)
							if math.abs(PointToObjectSpace.X) <= v1956 * 0.5 then
								local abs3 = math.abs
								local v1960 = PointToObjectSpace.Z
								local v1961 = abs3(v1960)
								if v1961 <= v1957 * 0.5 then
									table.insert(v1961, v1960)
								end
							end
						end
					end
				end
				local v1962, v1963
				if 0 < #v1958 then
					local v1964 = #v1958
					v1963 = 1 < v1964
					v1963 = v1963 and "s" or ""
					v1962 = 1 < v1964
					v1962 = v1962 and " Are" or " Is"
					v1929.Text = "🚨 " .. v1964 .. " Player" .. v1963 .. v1962 .. " in Your Base 🚨"
					for v1965 = 1, 5 do
						local v1966 = v1937[v1965]
						if v1965 <= v1964 then
							local v1967 = v1958[v1965]
							v1966.frame.Visible = true
							if v1966.arrow then
								v1966.arrow.Visible = v1931(v1967)
							end
							if v1966.lastId ~= v1967.UserId then
								v1966.lastId = v1967.UserId
								v1966.name.Text = v1967.Name
								local v1968 = v1967
								local v1969 = v1966

								local function v1970()
									local function v1972()
										while true do
										end
									end

									local _, v1973
									v1973, _ = pcall(v1972)
									if v1973 and v1969.img then
										bit32.bxor(150)
										if v1969.img.Parent then
										end
									end
								end

								task.spawn(v1970)
							end
						else
							v1966.frame.Visible = false
							if v1966.arrow then
								v1966.arrow.Visible = false
							end
							v1966.lastId = nil
						end
					end
					v1930.Visible = true
				else
					v1930.Visible = false
					for v1971 = 1, 5 do
						v1937[v1971].frame.Visible = false
						v1937[v1971].lastId = nil
					end
				end
			end

			RunService.Heartbeat:Connect(_FH_NV(v1953))
		end

		return v1942
	end

	v126 = v126()
	_G._M.BaseAlarm = v126

	v126 = function(...)
		local v1974, v1975, v1976
		if not cloneref then
			v1974 = function(...)
				local _ = 27189 + bit32.rshift(23, (string.unpack("<i8", "\28\0\0\0\0\0\0\0"))) + -27188
				return nil
			end

			_FH_NV(v1974)
			v1975 = nil
			v1976 = nil
		end
		v1975 = game
		v1976 = v1975
		v1975 = v1975.GetService
		local v1977 = v1974(v1975(v1976, "Players"))
		v1975 = false
		v1976 = {}
		local v1978 = { "TradeLiveTrade", "TradePlayerList", "TradePrompts" }

		local function v1979(...)
			local v1983, v1984
			table.create(2)
			local v1985 = nil

			local function v1986()
				return v1985.TradeLiveTrade.Other.Username.Text
			end

			_FH_NV(v1986)
			local v1987 = nil

			local function v1988()
				local v1997 = v1987
				local v1998 = "Other"
				local FindFirstChild5 = v1997:FindFirstChild(v1998, true)
				if v1997 then
					v1997 = FindFirstChild5:FindFirstChild("Username")
					v1998 = FindFirstChild5
				end
				local _ = 2054 + (string.unpack(">i8", "\0\0\0\0\0\0\1f") + 4 - string.byte("x\132\167%", 2, nil)) + -2281
				v1998 = v1998 and v1997.Text or nil
				return v1998
			end

			local v1989 = _FH_NV(v1988)
			local _FH_NV4 = _FH_NV
			local v1990 = nil

			local function v1991()
				local _ = 15579 + (75 - string.len("\209") + string.len("\158\2312")) + -15632
				local v1999 = v1990
				local Username = v1999:FindFirstChild("Username", true)
				if v1999 then
					v1999 = Username:IsA("TextLabel")
				end
				v1999 = v1999 and Username.Text or nil
				return v1999
			end

			local v1992, v1993, v1994
			v1994, v1993, v1992 = ipairs(v1989)
			_FH_NV4(v1991)
			while true do
				local _
				v1992, _ = v1994(v1993, v1992)
				if v1992 == nil then
					break
				else
					local v1995
					v1995, v1983 = pcall(v1983)
					if v1995 then
						local v1996 = type(v1984)
						if v1996 == "string" then
							v1984 = #v1983
							if 0 < v1984 then
								return v1996
							end
						end
					end
				end
			end
			return "Unknown"
		end

		local function v1980()
			for _, v2000 in ipairs(v1976) do
				local v2001 = v2000

				local function v2002(...)
					return (nil)()
				end

				pcall(_FH_NV(v2002))
			end
		end

		local function v1981(...)
			local v2003, v2004
			if not nil then
				return
			end
			v2003 = 0
			v2004 = nil
			local v2005, v2006

			local function v2007(...)
				if not v1975 then
					return
				end
				for _, v2010 in ipairs(nil) do
					if v2010 and v2010.Name == "TradeLiveTrade" then
						v1979(v2010)
						break
					end
				end
				local LocalPlayer19 = v1977.LocalPlayer
				if LocalPlayer19 then
					LocalPlayer19:Kick("Protected By Faded Hub :) | Logger: Unknown")
				end
			end

			_FH_NV(v2007)
			local insert13 = table.insert
			local v2008 = nil

			local function v2009()
				v2008.Enabled = true
				task.defer(v2004)
			end

			;(nil).GetPropertyChangedSignal(nil, "Enabled"):Connect(_FH_NV(v2009))
			insert13()
		end

		local v1982 = {}

		function v1982.set()
			local v2011 = v1975
			if v2011 then
				return
			end
			v2011()

			local function v2012(...)
				local v2013, v2014
				local LocalPlayer20 = v1977.LocalPlayer
				if not LocalPlayer20 then
					return
				end
				local PlayerGui6 = LocalPlayer20:WaitForChild("PlayerGui", 10)
				if not PlayerGui6 then
					return
				end
				local v2015 = {}
				local v2016, v2017, v2018
				v2018, v2017, v2016 = ipairs(10)
				local v2019 = v2017
				while true do
					local _
					v2016, _ = v2018(v2017, v2016)
					if v2016 == nil then
						break
					else
						v2013 = v2013(v2014, nil, 10)
						v2014 = table.insert
						v2014(nil, 10)
						v2019 = v2016
					end
				end
				if not v2015.TradeLiveTrade then
					return
				end
				for _, v2020 in ipairs(v2019) do
					local v2021 = v2015[v2020]
					if v2021 then
						v2021(v2015[v2020], nil)
					end
				end
				local insert14 = table.insert

				local function v2022(...)
					if not v1975 then
						return
					end
					local v2023, v2024, v2025
					v2025, v2024, v2023 = ipairs(nil)
					repeat
						local v2026
						v2023, v2026 = v2025(v2024, v2023)
					until v2023 == nil or nil == v2026
				end

				PlayerGui6.ChildAdded:Connect(_FH_NV(v2022))
				insert14()
			end

			task.spawn(v2012)
		end

		return v1982
	end

	v126 = v126()
	_G._M.LoggerProtector = v126

	v126 = function(...)
		local v2027 = nil
		if not cloneref then
			v2027 = function(...)
				local v2048
				v2048 = math.modf(3.141592653589793) < 217
				v2048 = v2048 and string.len("q") or string.unpack(">i8", "\0\0\0\0\0\0\0l")
				local v2049
				v2049 = v2048 <= 28
				v2049 = v2049 and 350 or 117
				return nil
			end

			_FH_NV(v2027)
		end
		local game13 = game
		local Players6 = "Players"
		local LocalPlayer21 = v2027(game13:GetService(Players6)).LocalPlayer
		local v2028 = game13
		local v2029 = Players6
		local v2030, v2031, v2032, v2033
		if not LocalPlayer21 then
			local v2034 = {}
			local function v2035()
			end
			v2034.set = _FH_NV(v2035)
			local function v2036()
			end
			v2034.setItem = _FH_NV(v2036)
			return v2034
		end
		v2028 = false
		v2029 = ""
		v2030 = {}

		local function v2037()
			for _, v2050 in ipairs(v2030) do
				local _ = 13337 + (bit32.band(
					string.unpack("<i8", "\224\1\0\0\0\0\0\0"),
					204,
					3
				) + 3) + -13336
				local v2051 = v2050

				local function v2052()
					v2051:Disconnect()
				end

				_FH_NV(v2052)
			end
		end

		v2031 = nil
		v2032 = _FH_NV

		local function v2038()
			if v2029 == "" then
				return false
			end
			local Character9 = LocalPlayer21.Character
			if not Character9 then
				return false
			end
			for _, v2053 in ipairs(Character9:GetChildren()) do
				if v2053:IsA("Tool") and v2053.Name:lower() == v2029:lower() then
					return true
				end
			end
			return false
		end

		v2032 = v2032(v2038)
		v2031 = v2032
		v2032 = false
		local v2039 = {}
		local v2040 = table.create(8)
		v2033 = "FriendPanelESP"
		v2040[1] = v2033
		v2040[2] = "TimerESP"
		v2040[3] = "PlayerESP"
		v2040[4] = "CloneESP"
		v2040[5] = "MineESP"
		v2040[6] = "FriendESP"
		v2040[7] = "BaseXRay"
		v2040[8] = "BrainrotESP"
		v2033 = nil

		local function v2041()
			local band2 = bit32.band
			local v2054
			v2054 = 3 < string.byte("\189+j4", 3, nil)
			v2054 = v2054 and 452 or 44
			local _ = 29269 + band2(v2054, (string.unpack("<i8", "\144\0\0\0\0\0\0\0"))) + -29395
			return _G
		end

		v2033 = _FH_NV(v2041)

		local function v2042(...)
			local v2055 = nil
			if not _G._FH_GAMMA_GUI then
				return
			end
			local v2056 = not v2028
			if not v2056 then
				v2056 = not v2031()
			end
			if _G._FH_ESP_GUI then
			end
			local v2057
			v2057 = not false
			v2057 = v2057 and 35 or 375
			if _G.DatShawnSpamPanel and _G.DatShawnSpamPanel.gui then
				local pcall14 = pcall
				v2055 = _FH_NV
				local v2058 = v2056
				local function v2059()
				end
				pcall14(v2055(v2059))
			end
			if v2056 then
				local v2060 = v2032
				if v2060 then
					v2060 = _G._FH_BASEXRAY_SET
				end
				if v2060 then
					v2060 = _G._FH_BASEXRAY_SET
					v2055 = true
					v2060(v2055)
				end
				for _, v2061 in v2060(v2055) do
					if v2039[v2061] then
						local v2062 = v2033(v2061)
						if v2062 then
							local v2063 = v2062

							local function v2064()
								v2063.set(true)
							end

							pcall(_FH_NV(v2064))
						end
					end
				end
			else
				if _G._FH_XRAY_ENABLED and _G._FH_BASEXRAY_SET then
					v2055 = false
					_G._FH_BASEXRAY_SET(v2055)
				end
				for _, v2065 in ipairs(v2055) do
					local v2066 = v2033(v2065)
					if v2066 and v2066.enabled and not v2039[v2065] then
						local v2067 = v2066

						local function v2068()
							v2067.set(false)
						end

						pcall(_FH_NV(v2068))
					end
				end
			end
		end

		local function v2043(...)
			v2037()
			local insert15 = table.insert

			local function v2069(...)
				if (nil).IsA(nil, "Tool") then
					task.wait()
					v2042()
				end
			end

			;(nil).ChildAdded:Connect(_FH_NV(v2069))
			insert15()
			local insert16 = table.insert

			local function v2070(...)
				if not (nil)(nil, "Tool") then
					return
				end
				task.wait()
				string.len("#\149e")
				return nil, nil, nil, nil, nil, nil
			end

			;(nil).ChildRemoved:Connect(_FH_NV(v2070))
			insert16()
			local wait4 = task.wait
			wait4(0.1)
			wait4()
		end

		if LocalPlayer21.Character then
			v2043(LocalPlayer21.Character)
		end
		if not _G._FH_HideGUI_charConn then
			_G._FH_HideGUI_charConn = LocalPlayer21.CharacterAdded:Connect(v2043)
		end
		local v2044 = {}
		local function v2045()
		end
		v2044.set = _FH_NV(v2045)

		local function v2046(...)
			local v2071 = nil
			if not v2071 then
				v2071 = ""
			end
			v2071()
		end

		v2044.setItem = _FH_NV(v2046)

		local function v2047(...)
			local v2072, v2073, v2074

			local function v2075()
				if _G._FH_BackpackLock and _G._FH_BackpackLock.suspend then
					_G._FH_BackpackLock.suspend(3)
				end
			end

			pcall(_FH_NV(v2075))

			local function v2076(...)
				LocalPlayer21:FindFirstChildOfClass("Backpack")
				local ipairs2 = ipairs
				local v2085 = { nil, nil }
				for _, v2086 in ipairs2(v2085) do
					if v2086 then
						for _, v2087 in ipairs(v2086:GetChildren()) do
							if v2087:IsA("Tool") then
								local lower = v2087.Name:lower()
								local lower2 = v2029:lower()
								if lower == lower2 then
									return lower, lower2
								end
							end
						end
					end
				end
				return nil
			end

			_FH_NV(v2076)

			local function v2077()
				local Character10 = LocalPlayer21.Character
				if not Character10 then
					return false
				end
				for _, v2088 in ipairs(Character10:GetChildren()) do
					if v2088:IsA("Tool") then
						local lower3 = v2088.Name:lower()
						local _ = 16656 + (115 - string.byte("3\175\193", 3, nil) + string.unpack(">i8", "\0\0\0\0\0\0\1J")) + -16899
						if lower3 == v2029:lower() then
							return true
						end
					end
				end
				return false
			end

			_FH_NV(v2077)
			for _ = 1, 6 do
				if v2072() then
					return
				end
				v2072 = LocalPlayer21.Character
				if v2073 then
					v2073 = v2072:FindFirstChildOfClass("Humanoid")
					v2074 = v2072
				end
				v2074 = v2074()
				if v2073 and v2074 then
					local pcall15 = pcall
					local v2078 = v2073
					local v2079 = v2074

					local function v2080()
						while true do
							local _ = 22790 + bit32.bxor(3 + string.byte("$\147\249\213\142", 2, 4)) + -22859
						end
					end

					pcall15(_FH_NV(v2080))
					local v2081 = pcall15()
					if not v2081 then
						v2081 = pcall
						local v2082 = v2074
						local v2083 = v2072
						local function v2084()
						end
						v2081(_FH_NV(v2084))
					end
					if v2081() then
						return
					end
				end
				task.wait(0.05)
			end
		end

		function v2044.hideNow(...)
			local v2089 = nil
			v2047()

			local function v2090()
				if _G._FH_GAMMA_GUI then
				end
			end

			pcall(_FH_NV(v2090))

			local function v2091()
				if _G._FH_ESP_GUI then
				end
			end

			pcall(_FH_NV(v2091))
			local pcall16 = pcall
			local _FH_NV5 = _FH_NV

			local function v2092()
				if _G.DatShawnSpamPanel and _G.DatShawnSpamPanel.gui then
				end
			end

			pcall16(_FH_NV5(v2092))
			if _G._FH_XRAY_ENABLED and _G._FH_BASEXRAY_SET then
				local pcall17 = pcall
				_FH_NV5 = _FH_NV

				local function v2093()
					_G._FH_BASEXRAY_SET(false)
				end

				pcall17(_FH_NV5(v2093))
			end
			for _, v2094 in ipairs(_FH_NV5) do
				local v2095 = v2033(v2089)
				if v2095 then
					v2089 = v2095.enabled
					if v2089 then
						v2089 = v2039[v2094]
						if not v2089 then
							v2039[v2094] = true
							v2089 = pcall
							local v2096 = v2095

							local function v2097()
								v2096.set(false)
							end

							v2089(_FH_NV(v2097))
						end
					end
				end
			end
		end

		_G._FH_HideOnEquip = v2044
		return v2044
	end

	v126 = v126()
	_FH_yield()

	local function v520(...)
		local v2098 = nil
		if not cloneref then
			v2098 = function(...)
				return nil
			end

			_FH_NV(v2098)
		end
		local game14 = game
		local GetService12 = game14.GetService
		local v2099 = v2098(GetService12(game14, "Players"))
		local game15 = game
		local GetService13 = game15.GetService
		local v2100 = GetService12(GetService13(game15, "RunService"))
		local game16 = game
		local UserInputService3 = "UserInputService"
		local v2101 = GetService13(game16:GetService(UserInputService3))
		local LocalPlayer22 = v2099.LocalPlayer
		local v2102 = game16
		local v2103 = UserInputService3
		local v2104, v2105, v2106, v2107, v2108, v2109
		if not LocalPlayer22 then
			local function v2110()
			end
			_FH_NV(v2110)
			return {}
		end
		v2102 = false
		v2103 = false
		v2104 = 0
		v2105 = false
		v2106 = 0
		v2107 = nil
		v2108 = nil
		v2109 = nil

		local function v2111()
			local v2119
			v2119 = not not false
			v2119 = v2119 and 8 or 463
			string.unpack(">i8", "\0\0\0\0\0\0\1\16")
			local v2120 = v2104
			local function v2121()
			end
			task.delay(0.5, _FH_NV(v2121))
		end

		local function v2112()
			local _ = 10829 + (bit32.band(string.unpack("<i8", "\162\1\0\0\0\0\0\0"), 488) - 353) + -10891
			local v2122 = v2102
			if not v2122 then
				return
			end
			v2122()
		end

		v2101.JumpRequest:Connect(_FH_NV(v2112))

		local function v2113()
			(nil).WaitForChild(nil, "HumanoidRootPart", 10)
			;(nil).WaitForChild(nil, "Humanoid", 10)
			if v2109 then
				local StateChanged = v2109.StateChanged
				local Connect7 = StateChanged.Connect
				local _FH_NV6 = _FH_NV
				local function v2123()
				end
				Connect7(StateChanged, _FH_NV6(v2123))
				v2109.Jumping:Connect(_FH_NV6)
			end
		end

		local Character11 = LocalPlayer22.Character
		local v2114 = Character11
		if Character11 then
			v2113(LocalPlayer22.Character)
			v2114 = v2113
		end
		v2114 = LocalPlayer22.CharacterAdded
		local v2115 = v2114
		v2114 = v2114.Connect
		v2114(v2115, v2113)
		v2114 = 0

		local function v2116(...)
			local v2124 = nil
			if v2114 < 0.033 then
				return
			end
			if v64() then
				return
			end
			if not (v2102 and v2108 and v2109) then
				return
			end
			if not (0.5 < v2108.Velocity.Y and not v2103) then
				if v2108.Velocity.Y < -1 then
				end
			end
			local Velocity = v2108.Velocity
			local __FH_JumpHoldUntil = _G.__FH_JumpHoldUntil
			if v2124 then
				v2124 = os.clock() < __FH_JumpHoldUntil
			end
			if 0.5 < Velocity.Y and not v2103 and not (v2105 or v2124) then
				v2108.Velocity = Vector3.new(Velocity.X, 0, Velocity.Z)
			end
			if v2105 and Velocity.Y < -5 then
				v2108.Velocity = Vector3.new(Velocity.X, -3, Velocity.Z)
			end
			local GetState = v2109:GetState()
			if GetState == Enum.HumanoidStateType.GettingUp or
				GetState == Enum.HumanoidStateType.Physics then
				v2109:ChangeState(Enum.HumanoidStateType.Running)
			end
			local MoveDirection = v2109.MoveDirection
			if 0.01 < MoveDirection.Magnitude then
				local Velocity2 = v2108.Velocity
				if math.sqrt(Velocity2.X * Velocity2.X + Velocity2.Z * Velocity2.Z) < 8 then
					v2108.Velocity = Vector3.new(
						MoveDirection.X * 16,
						Velocity2.Y,
						MoveDirection.Z * 16
					)
				end
			end
		end

		v2100.Heartbeat:Connect(_FH_NV(v2116))
		local v2117 = {}

		local function v2118()
			local v2125 = bit32.countlz
			local v2126 = true
			if v2126 then
				v2126 = math.modf(3.141592653589793)
			end
			while true do
				if not v2126 then
					v2126 = 295
				end
				v2125(v2126)
				v2125 = nil
				v2126 = math.modf(3.141592653589793)
			end
		end

		v2117.set = _FH_NV(v2118)
		return v2117
	end

	local v521 = v520()

	v127 = function(...)
		local v2127 = nil
		if not cloneref then
			v2127 = function(...)
				local _ = 17331 + bit32.band(
					bit32.bnot((string.unpack("<i8", "\154\0\0\0\0\0\0\0"))),
					4,
					9
				) + -17119
				return nil
			end

			_FH_NV(v2127)
		end
		local game17 = game
		local Players7 = "Players"
		local LocalPlayer23 = v2127(game17:GetService(Players7)).LocalPlayer
		local v2128 = game17
		local v2129 = Players7
		local v2130 = nil
		if not LocalPlayer23 then
			local v2131 = {}
			local function v2132()
			end
			v2131.set = _FH_NV(v2132)
			local function v2133()
			end
			v2131.setAntiGummy = _FH_NV(v2133)
			return v2131
		end
		v2128 = false
		v2129 = 0
		v2130 = LocalPlayer23.CharacterAdded
		local v2134 = v2130
		v2130 = v2130.Connect

		local function v2135(...)
			if not (nil)(nil, "Humanoid", 5) then
				return
			end
			local v2143 = false
			v2143 = v2143 and 3 or math.modf(3.141592653589793)
		end

		v2130(v2134, _FH_NV(v2135))
		v2130 = nil

		local function v2136(...)
			local v2144 = nil
			local ipairs3 = ipairs
			local v2145 = { LocalPlayer23, nil }
			for _, v2146 in ipairs3(v2145) do
				if v2146 then
					local BlockTools = "BlockTools"
					if v2146:GetAttribute(BlockTools) ~= nil then
						local _ = 23683 + (bit32.bxor(285) + string.unpack("<i8", "\27\0\0\0\0\0\0\0")) + -23989
						_ = v2146.GetAttribute
						if v2146(BlockTools, "BlockTools") == false then
							v2144 = v2146
						else
							v2146:SetAttribute("BlockTools", false)
							v2144 = v2146
						end
					end
					if not (v2146:GetAttribute("Web") == nil or v2146:GetAttribute("Web") == false) then
						v2146:SetAttribute("Web", false)
					end
				end
			end
			if v2144 and v2144:GetAttribute("BackpackReady") == false then
				v2144:SetAttribute("BackpackReady", true)
			end
		end

		_FH_NV(v2136)
		local spawn9 = task.spawn

		local function v2137()
			while task.wait(0.1) and _FH_GAMMA_GEN == _G._FH_GAMMA_GEN do
				if v2128 then
					local Character12 = LocalPlayer23.Character
					if Character12 then
						Character12:FindFirstChildOfClass("Humanoid")
						Character12:FindFirstChild("HumanoidRootPart")
					end
				end
			end
		end

		spawn9(_FH_NV(v2137))
		local v2138 = spawn9(game:GetService("Workspace"))

		local function v2139()
			local v2147, v2148, v2149
			v2149, v2148, v2147 = ipairs(v2138:GetChildren())
			local _, _
			_, _ = v2149(v2148, v2147)
		end

		local function v2140(...)
			local v2150
			if v2128 then
				v2150 = not (bit32.rrotate(256, 1) == 327)
				v2150 = v2150 and 484 or string.byte("\134", 1, nil)
				if (nil).Name == "GummyBear" then
					local v2151 = nil
					pcall(_FH_NV(nil))
				end
			end
		end

		v2138.ChildAdded:Connect(v2140)
		local v2141 = {}

		local function v2142(...)
			local v2152 = nil
			bit32.bxor(448)
			if v2152 then
				v2152 = true
			end
			local v2153 = v2128
			if v2153 then
				v2153()
			end
		end

		v2141.setAntiGummy = _FH_NV(v2142)
		return v2141
	end

	v127 = v127()
	v128 = _G
	v128 = v128._M
	v128.AntiAdminGummy = v127

	v127 = function(...)
		local v2154, v2155
		if not cloneref then
			v2155 = function(...)
				return nil
			end

			_FH_NV(v2155)
		end
		while true do
			v2154 = v2154 < nil

			v2155 = function(...)
				return nil
			end

			_FH_NV(v2155)
		end
	end

	v127 = v127()

	v128 = function(...)
		local v2156, v2157, v2158, v2159, v2160, v2161
		if not cloneref then
			v2156 = function(...)
				return nil
			end

			_FH_NV(v2156)
			v2157 = nil
			v2158 = nil
			v2159 = nil
			v2160 = nil
			v2161 = nil
		end
		v2157 = game
		v2158 = v2157
		v2157 = v2157.GetService
		v2159 = "Workspace"
		local v2162 = v2156(v2157(v2158, v2159))
		v2157 = false
		v2158 = {}
		v2159 = false
		v2160 = nil
		v2161 = _FH_NV

		local function v2163(...)
			local v2167 = nil
			local Model = (nil)(v2167, "Model")
			if not Model then
				return false
			end
			local PlotSign2 = Model(v2167, "PlotSign")
			if v2167 then
				v2167 = PlotSign2:FindFirstChild("YourBase")
			end
			if v2167 then
				v2167 = PlotSign2.YourBase.Enabled
			end
			return v2167
		end

		v2161 = v2161(v2163)
		v2161 = nil

		local function v2164(...)
			local v2168 = nil
			if not v2168 then
				return false
			end
			for _ = 1, 10 do
				if not v2168 then
					return false
				end
				if v2168:IsA("Model") and v2168.Parent and v2168.Parent.Name == "Plots" then
					return v2160(v2168)
				end
				v2168 = v2168.Parent
			end
			return false
		end

		_FH_NV(v2164)

		local function v2165(...)
			if v2159 then
				return
			end
			local v2169, v2170
			v2170, v2169 = pcall(getrawmetatable, game)
			if not (v2170 and v2169) then
				return
			end
			local v2171 = false
			if not pcall(setreadonly, nil, v2171) then
				return
			end
			local __newindex = v2169.__newindex
			if not newcclosure then
				v2171 = function(...)
					return nil
				end

				_FH_NV(v2171)
			end

			local function v2172(...)
				local v2174, v2175, v2176
				local v2177 = _G._FH_SHUTDOWN
				if not v2177 then
					v2177 = v2157
					if v2177 then
						v2177 = typeof(v2174)
						if v2177 == "Instance" then
							v2176 = "ProximityPrompt"
							v2174 = v2174(v2175, v2176)
							if v2174 then
								v2174 = v2161(v2175)
							end
							if v2174 then
								local find = string.find
								local lower4 = string.lower
								if not v2176 then
									v2176 = ""
								end
								v2175 = lower4(v2176)
								v2176 = "sell"
								v2174 = find(v2175, v2176, 1, true)
								if not v2174 then
									local find2 = string.find
									local lower5 = string.lower
									if not v2176 then
										v2176 = ""
									end
									v2175 = lower5(v2176)
									v2176 = "sell"
									v2174 = find2(v2175, v2176, 1, true)
								end
							end
						end
					end
				end
				return v2177(v2174, v2175, v2176)
			end

			v2171(_FH_NV(v2172))
			pcall(setreadonly, v2172, true)
			if _G._FH_TEARDOWN then
			end

			local function v2173()
				local _FH_NV7 = _FH_NV
				local function v2178()
				end
				string.byte("\231`", 1, nil)
				_FH_NV7(v2178)
			end

			table.insert(_G._FH_TEARDOWN, v2173)
		end

		local v2166 = {}

		function v2166.set(...)
			if nil then
				(nil)()

				local function v2179(...)
					local v2185 = nil
					local Plots6 = "Plots"
					if v2162:FindFirstChild(Plots6) then
					end
					local v2186 = { Plots6 }
					local v2187 = 1
					local v2188 = 0
					while 0 < v2187 do
						if not v2157 then
							return
						end
						local GetChildren5 = v2186[v2187]:GetChildren()
						local v2189 = 0
						v2187 = v2187 - 1
						while true do
							v2189 = v2189 + 1
							if v2189 <= #GetChildren5 then
								local v2190 = GetChildren5[v2189]
								if v2190:IsA("ProximityPrompt") then
									local lower6 = string.lower
									local v2191 = v2190.ActionText
									if not v2191 then
										v2191 = ""
									end
									local v2192 = lower6(v2191)
									local lower7 = string.lower
									local v2193 = v2190.Name
									if not v2193 then
										v2193 = ""
									end
									if v2161(v2185) and not string.find(v2192, "sell", 1, true) and
										not string.find(lower7(v2193), "sell", 1, true) then
										if v2158[v2190] == nil then
											v2158[v2190] = v2190.HoldDuration
										end
										local pcall18 = pcall
										v2185 = _FH_NV
										local v2194 = v2190

										local function v2195()
											v2194.HoldDuration = 0.1
										end

										pcall18(v2185(v2195))
									end
								end
								v2187 = v2187 + 1
							else
								break
							end
						end
						v2188 = v2188 + 1
						if v2188 % 40 == 0 then
							task.wait()
						end
					end
				end

				task.spawn(v2179)
			else
				for v2180, v2181 in pairs(v2158) do
					if v2180 and v2180.Parent then
						local v2182 = v2180
						local v2183 = v2181
						local function v2184()
						end
						pcall(_FH_NV(v2184))
					end
				end
			end
		end

		return v2166
	end

	v128 = v128()
	v516 = _G
	v516 = v516._M
	v516.QuickPickup = v128
	local v522 = v178

	v128 = function(...)
		local v2196, v2197, v2198, v2199
		if not cloneref then
			v2196 = function(...)
				return nil
			end

			_FH_NV(v2196)
			v2197 = nil
			v2198 = nil
			v2199 = nil
		end
		v2197 = game
		v2198 = v2197
		v2197 = v2197.GetService
		local v2200 = v2196(v2197(v2198, "Players"))
		v2197 = false
		v2198 = false
		local v2201 = {}
		local v2202 = { "Stealing", "steal" }
		v2199 = "stolen"
		v2202[3] = v2199
		v2202[4] = "isStealing"
		v2202[5] = "IsSteal"
		v2202[6] = "issteal"
		local v2203 = tick()
		v2199 = nil

		local function v2204(...)
			local v2212 = up54[nil]
			local v2213
			v2213 = type(nil) == "string"
			if v2213 then
				v2213 = not (string.find(string.lower(nil), "you stole", 1, true) == v2212)
			end
			return v2213
		end

		_FH_NV(v2204)

		local function v2205()
			return false
		end

		_FH_NV(v2205)

		local function v2206(...)
			local bxor2 = bit32.bxor
			local v2214
			v2214 = not not false
			if v2214 then
				v2214 = 465
			end
			local v2215 = nil
			if not v2214 then
				v2214 = 9
				v2215 = nil
			end
			bxor2(v2214)
			v2215 = false
			local pcall19 = pcall
			local v2216 = nil
			local function v2217()
			end
			pcall19(_FH_NV(v2217))
			return pcall19
		end

		local function v2207(...)
			v2206[nil] = nil
			local v2233 = tick()
			while tick() < v2233 + 120 do
				if not v2206("balloon") then
					local v2234 = nil

					local function v2235()
						local __GH_DefenseExecute = _G.__GH_DefenseExecute
						local v2238 = v2234
						local v2239 = { "balloon" }
						local _ = -750064 + bit32.rrotate(
							bit32.bxor(string.byte("\169\1", 1, nil), 20),
							(string.unpack("<i8", "\20\0\0\0\0\0\0\0"))
						) + -7468
						__GH_DefenseExecute(v2238, v2239)
					end

					pcall(_FH_NV(v2235))
					return
				end
				if not v2206("ragdoll") then
					local v2236 = nil

					local function v2237(...)
						local _ = -805284515 + (bit32.lshift(
							math.modf(3.141592653589793),
							(string.unpack("<i8", "\28\0\0\0\0\0\0\0"))
						) - 441) + -21411
						local __GH_DefenseExecute2 = (nil).__GH_DefenseExecute
						local v2240 = v2236
						local v2241 = { "ragdoll" }
						__GH_DefenseExecute2(v2240, v2241)
					end

					pcall(_FH_NV(v2237))
					return
				end
				task.wait(0.5)
			end
		end

		local function v2208()
			tick()
		end

		local function v2209(...)
			local v2242 = false
			v2242 = v2242 and 67 or string.byte("\247\143", 1, 2)
			string.len("\164\171")
			if not nil then
				return
			end
			local TextLabel13 = (nil)(nil, "TextLabel")
			local v2243 = TextLabel13
			if not TextLabel13 then
				local TextButton10 = (nil).IsA(nil, "TextButton")
				v2243 = TextButton10
				if not TextButton10 then
					local TextBox4 = (nil).IsA(nil, "TextBox")
					v2243 = TextBox4
					if not TextBox4 then
						return
					end
				end
			end
			v2243 = nil
			local v2244 = nil
			local function v2245()
			end
			_FH_NV(v2245)
			pcall(v2245)
			local insert17 = table.insert
			local function v2246()
			end
			;(nil).GetPropertyChangedSignal(nil, "Text"):Connect(_FH_NV(v2246))
			insert17()
		end

		local function v2210(...)
			local v2247
			for _, v2248 in ipairs(v2201) do
				v2247 = v2247 * nil
				local v2249 = v2248

				local function v2250(...)
					string.len("")
					;(nil).Disconnect(nil)
				end

				pcall(_FH_NV(v2250))
			end
			table.clear(v2201)
		end

		local v2211 = {}

		function v2211.set()
			local _ = 3204 + (367 - string.len("\250\218") + string.len("\229\175")) + -3569

			local function v2251(...)
				local v2252 = nil
				v2210()
				local LocalPlayer25 = v2200.LocalPlayer
				if not LocalPlayer25 then
					return
				end
				local WaitForChild = LocalPlayer25:WaitForChild(nil, 10)
				if not WaitForChild then
					return
				end
				local v2253 = { nil }
				local v2254 = 1
				local v2255 = 0
				while 0 < v2254 do
					if not v2197 then
						return
					end
					local GetChildren6 = v2253[v2254]:GetChildren()
					local v2256 = 0
					v2254 = v2254 - 1
					while true do
						v2256 = v2256 + 1
						if v2256 <= #GetChildren6 then
							local v2257 = GetChildren6[v2256]
							if v2257 ~= v2252 then
								v2252 = pcall
								v2252(v2209, v2257)
								v2254 = v2254 + 1
							end
						else
							break
						end
					end
					v2255 = v2255 + 1
					if v2255 % 40 == 0 then
						task.wait()
					end
				end
				if not v2197 then
					return
				end
				local insert18 = table.insert

				local function v2258(...)
					local _ = 31394 + bit32.band(string.byte("\139", 1, 1) - 90) + -31441
					local v2259 = v522
					;(nil)(nil, v2259)
					pcall(nil, v2259)
				end

				WaitForChild.DescendantAdded:Connect(_FH_NV(v2258))
				insert18()
			end

			task(v2251)
		end

		return v2211
	end

	v128 = v128()
	v516 = _G
	v516 = v516._M
	v516.AutoKickOnSteal = v128

	v128 = function(...)
		local v2260, v2261, v2262
		if not cloneref then
			v2260 = function(...)
				local _ = 25451 + (57 - math.modf(3.141592653589793) - string.unpack("<i8", "?\0\0\0\0\0\0\0")) + -25441
				return nil
			end

			_FH_NV(v2260)
			v2261 = nil
			v2262 = nil
		end
		local game18 = game
		v2261 = game18
		v2262 = "Players"
		local LocalPlayer26 = v2260(game18.GetService(v2261, v2262)).LocalPlayer
		v2261 = false
		v2262 = {}

		local function v2263(...)
			local v2265 = nil
			if not v2265 then
				return
			end
			local Humanoid5 = v2265:FindFirstChildOfClass("Humanoid")
			if v2265 then
				v2265 = Humanoid5:FindFirstChildOfClass("Animator")
			end
			if not v2265 then
				return
			end
			if v2261 then
				for _, v2266 in ipairs(v2265:GetPlayingAnimationTracks()) do
					local v2267 = v2266

					local function v2268()
						v2267:Stop(0)
					end

					pcall(_FH_NV(v2268))
				end

				local function v2269(...)
					if v2261 then
						local v2270 = nil

						local function v2271()
							v2270:Stop(0)
						end

						pcall(_FH_NV(v2271))
					end
				end

				table.insert(v2262, v2265.AnimationPlayed:Connect(v2269))
			end
		end

		local function v2264()
			return v2261
		end

		return (_FH_NV(v2264))
	end

	v128 = v128()
	v128 = table.create(5)
	v516 = "Flying Carpet"
	v128[1] = v516
	v128[2] = "Santa's Sleigh"
	v128[3] = "Witch's Broom"
	v128[4] = "Waverider"
	v128[5] = "Cupid's Wings"
	v516 = v261.get
	v516 = v516("mount_type", "Flying Carpet")
	local v523 = v489

	local function v524(...)
		local v2275, v2276, v2277, v2278, v2279, v2280, v2281, v2282
		local v2283 = nil
		if not cloneref then
			v2275 = function(...)
				return nil
			end

			_FH_NV(v2275)
			v2276 = nil
			v2277 = nil
			v2278 = nil
			v2279 = nil
			v2280 = nil
			v2281 = nil
			v2282 = nil
			v2283 = nil
		end
		local game19 = game
		v2276 = game19
		v2277 = "Players"
		local LocalPlayer27 = v2275(game19.GetService(v2276, v2277)).LocalPlayer
		v2276 = false
		v2277 = false
		v2278 = 175
		v2279 = nil
		v2280 = nil
		local v2284 = {
			["Giant Potion"] = true,
			Giant = true,
			["Grow Potion"] = true,
			["Super Grow"] = true,
			Potion = true
		}
		v2281 = nil
		v2282 = _FH_NV

		local function v2285(...)
			local v2293
			v2293 = not not false
			return v2293
		end

		v2282 = v2282(v2285)
		v2282 = nil

		v2283 = function(...)
			for _, v2294 in ipairs((nil).GetChildren(nil)) do
				if v2294:IsA("Tool") and v2281(v2294.Name) then
					return true
				end
			end
			return false
		end

		v2282 = _FH_NV(v2283)

		local function v2286(...)
			local v2295 = nil
			while v2279 do
			end
			if v2280 then
				v2295 = v2280
				v2295:Disconnect()
			end
			local Character13 = LocalPlayer27.Character
			local v2296 = v2295
			if Character13 then
				local function v2297(...)
					local IsA = (nil).IsA
					local _ = -2898 + bit32.lrotate(
						bit32.bxor(4),
						(string.unpack("<i8", "\11\0\0\0\0\0\0\0"))
					) + -5213
					if IsA(nil, "Tool") and (nil).Name ~= v516 and not v2281((nil).Name) then
						if v2279 then
							v2279:Disconnect()
						end
						if v2280 then
							v2280:Disconnect()
						end
						local function v2299()
						end
						pcall(_FH_NV(v2299))
					end
				end

				v2296 = Character13.ChildAdded:Connect(v2297)
			end
			v2296 = 0

			local function v2298()
				local v2300 = v2296
				if v2300 < 0.016 then
					return
				end
				v2300:GetAttribute("Stealing")
			end

			RunService.Heartbeat:Connect(_FH_NV(v2298))
		end

		v2283 = nil

		local function v2287()
			local v2301 = v2279
			if v2301 then
				local v2302 = v2279
				v2301 = v2302.Disconnect
				v2301(v2302)
			end
			local HumanoidRootPart2 = v2301:FindFirstChild("HumanoidRootPart")
			local v2303
			if HumanoidRootPart2 then
				v2303 = Vector3.new(0, HumanoidRootPart2.Velocity.Y, 0)
			else
				v2303 = v2301
			end
			v2303:FindFirstChild("Backpack")
			if v2303 then
				v2303 = v2301:FindFirstChild(v516)
			end
		end

		v2283 = _FH_NV(v2287)
		local v2288 = {}

		local function v2289(...)
			local clamp9 = math.clamp
			local v2304 = tonumber(nil)
			if not v2304 then
				v2304 = v2278
			end
			clamp9(v2304, 100, 210)
		end

		v2288.setSpeed = _FH_NV(v2289)

		local function v2290()
			math.modf(3.141592653589793)
			return false, 91, 14
		end

		v2288.set = _FH_NV(v2290)

		local function v2291()
			return v2276
		end

		v2288.isActive = _FH_NV(v2291)

		local function v2292(...)
			if not nil then
				return
			end
			task.wait(0.5)
			if not v2277 then
				return
			end
			local function v2305()
			end
			pcall(_FH_NV(v2305))
			local v2306 = BackpackLock
			if v2306 then
				v2306 = BackpackLock.suspend
			end
			if v2306 then
				v2306 = BackpackLock.suspend
				v2306(999)
			end
			v2306()
		end

		LocalPlayer27.CharacterAdded:Connect(v2292)
		return v2288
	end

	local v525 = v524()
	local v526 = v489

	local function v527(...)
		local v2307, v2308, v2309, v2310, v2311, v2312, v2313
		if not cloneref then
			v2307 = function(...)
				return nil
			end

			_FH_NV(v2307)
			v2308 = nil
			v2309 = nil
			v2310 = nil
			v2311 = nil
			v2312 = nil
			v2313 = nil
		end
		local game20 = game
		v2308 = game20
		v2309 = "Players"
		local LocalPlayer28 = v2307(game20.GetService(v2308, v2309)).LocalPlayer
		v2308 = false
		v2309 = 175
		v2310 = nil
		v2311 = {}
		v2312 = false
		v2313 = nil

		local function v2314()
			for _, v2324 in ipairs(v2311) do
				local v2325 = v2324

				local function v2326()
					v2325:Disconnect()
				end

				pcall(_FH_NV(v2326))
			end
		end

		local function v2315(...)
			v2314()
			local function v2327()
			end
			;(nil).Activated:Connect(_FH_NV(v2327))
			local function v2328()
			end
			;(nil).Deactivated:Connect(_FH_NV(v2328))
			local v2329 = nil

			local function v2330()
				local _ = 6806 + bit32.band(
					bit32.band(217, string.byte("2\173\130\233P", 5, nil), 437),
					104
				) + -6736
				if v2329.Parent == LocalPlayer28.Character then
				end
			end

			local Connect9 = (nil).AncestryChanged:Connect(_FH_NV(v2330))
			table.insert(v2311, v2330)
			local v2331 = v2311
			table.insert(v2331, v2330)
			table.insert(v2331, Connect9)
		end

		local function v2316()
			local v2332 = v2310
			if v2332 then
				local _ = 16337 + bit32.band(
					7 - string.len("\137"),
					445,
					(string.unpack("<i8", "u\1\0\0\0\0\0\0"))
				) + -16285
				local v2333 = v2310
				v2332 = v2333.Disconnect
				v2332(v2333)
			end
			v2332()

			local function v2334()
				v526.suspend("carpetride")
			end

			pcall(_FH_NV(v2334))
			local BackpackLock2 = BackpackLock
			local v2335 = BackpackLock2
			if BackpackLock2 then
				local suspend = BackpackLock.suspend
				v2335 = suspend
				if suspend then
					local suspend2 = BackpackLock.suspend
					suspend2(999)
					v2335 = suspend2
				end
			end
			v2335 = 0

			local function v2336()
				local v2337 = v2335
				if v2337 < 0.033 then
					return
				end
				v2337:GetAttribute("Stealing")
			end

			RunService.Heartbeat:Connect(_FH_NV(v2336))
		end

		local function v2317()
			local v2338 = v2310
			if v2338 then
				local v2339 = v2310
				v2338 = v2339.Disconnect
				v2338(v2339)
			end
			v2338()

			local function v2340()
				v526.unsuspend("carpetride")
			end

			pcall(_FH_NV(v2340))
			if BackpackLock.unsuspend then
				BackpackLock.unsuspend()
			end
		end

		local v2318 = {}

		local function v2319(...)
			local _ = -114419 + (bit32.lshift(string.unpack("<i8", "{\0\0\0\0\0\0\0"), 10) - string.len("\3\162\195")) + -11367
			local clamp10 = math.clamp
			local v2341 = tonumber(nil)
			if not v2341 then
				v2341 = v2309
			end
			clamp10(v2341, 100, 210)
		end

		v2318.setSpeed = _FH_NV(v2319)

		function v2318.suspend(...)
			local v2342
			v2342 = string.byte("=\236", 2, 2) < bit32.bor(12, (string.unpack("<i8", "x\0\0\0\0\0\0\0")))
			v2342 = v2342 and 254 or 329
			local v2343 = tick()
			local v2344 = tonumber(nil)
			if not v2344 then
				v2344 = 5
			end
			local v2345 = v2343 + v2344
			if _suspendUntil < v2345 then
				_suspendUntil = v2345
			end
			_suspended = true
			local delay = task.delay
			local v2346 = tonumber(nil)
			if not v2346 then
				v2346 = 5
			end

			local function v2347()
				if _suspendUntil <= tick() then
					_suspended = false
				end
			end

			delay(v2346, _FH_NV(v2347))
		end

		local function v2320()
			_suspended = false
			_suspendUntil = 0
		end

		v2318.unsuspend = _FH_NV(v2320)

		local function v2321(...)
			local v2348
			v2348 = 90 == math.modf(3.141592653589793)
			v2348 = v2348 and 326 or 283
			;(false)()
		end

		v2318.set = _FH_NV(v2321)

		local function v2322()
			return v2308
		end

		v2318.isActive = _FH_NV(v2322)
		local CharacterAdded = LocalPlayer28.CharacterAdded
		local Connect8 = CharacterAdded.Connect
		;(nil)(nil, nil)

		local function v2323()
			if not v2308 then
				return
			end
			task.wait(0.5)
		end

		Connect8(CharacterAdded, (nil)(v2323))
		return v2318
	end

	v527()
	local v528 = v123

	local function v529(...)
		local v2349, v2350, v2351, v2352, v2353, v2354
		if not cloneref then
			v2349 = function(...)
				local _ = 14609 + bit32.band(61, (string.len("\190"))) + -14539
				return nil
			end

			_FH_NV(v2349)
			v2350 = nil
			v2351 = nil
			v2352 = nil
			v2353 = nil
			v2354 = nil
		end
		local game21 = game
		local GetService14 = game21.GetService
		v2349(GetService14(game21, "Players"))
		v2350 = "ReplicatedStorage"
		local v2355 = GetService14(game:GetService(v2350))

		local function v2356()
			local _FH_NV8 = _FH_NV

			local function v2367()
				local v2369
				v2369 = 34 < string.byte("\14", 1, nil)
				v2369 = v2369 and 266 or 462
				local v2370
				v2370 = not (v2369 == 408)
				v2370 = v2370 and 161 or 54
			end

			local function v2368()
				while true do
					local _ = 27056 + bit32.bxor(255, (string.len("s"))) + -27217
					if not BackpackLock then
						break
					end
				end
			end

			task.spawn(v2368)
			_FH_NV8(v2367)
		end

		local v2357 = {}
		v2350 = {}
		v2351 = nil
		v2352 = setmetatable
		v2353 = {}
		v2354 = {}
		v2352 = v2352(v2353, v2354)
		v2353 = nil
		v2354 = _FH_NV

		local function v2358()
			for _, v2371 in ipairs(v2357) do
				if v2371.enabled then
					return true
				end
			end
			return false
		end

		v2354 = v2354(v2358)
		v2354 = nil

		local function v2359(...)
			local v2372 = nil
			local v2373 = select()
			for _ = 1, v2373 do
				local v2374 = select()
				if type(v2372) == "string" then
					local lower8 = v2374:lower()
					local v2375, v2376
					v2372, v2376, v2375 = ipairs(v2357)
					while true do
						local v2377
						v2375, v2377 = v2372(v2376, v2375)
						if v2375 == nil then
							break
						elseif v2377.enabled and lower8:find(v2377.needle, 1, true) then
							local v2378 = tick() - v2377.lastFire
							if 3 <= v2378 then
								v2378()
							end
						end
					end
				end
			end
		end

		_FH_NV(v2359)

		local function v2360(...)
			string.unpack(">i8", "\0\0\0\0\0\0\1\190")
			if v2352[nil] or not (nil).IsA(nil, "RemoteEvent") then
				return
			end
			local v2379 = nil

			local function v2380()
				return v2379.OnClientEvent:Connect(v2354)
			end

			local v2381, v2382
			v2382, v2381 = pcall(_FH_NV(v2380))
			if v2382 and v2381 then
				v2352[nil] = true
				v2350[#v2350 + 1] = v2381
			end
		end

		local function v2361()
		end

		local function v2362()
			v2361()
			local _FH_NV9 = _FH_NV

			local function v2383()
				while true do
					local _ = 1855 + bit32.rshift(bit32.rshift(string.len("V{"), 3), 27) + -1774
				end
			end

			local v2384
			v2384 = not (string.len("") - string.byte("?\r", 1, 2) == 75)
			v2384 = v2384 and 43 or 8
			local spawn10 = task.spawn
			local _FH_NV10 = _FH_NV

			local function v2385()
				local v2386 = v60.replicatedStorage(0)
				for v2387 = 1, #v2386 do
					local v2388 = v2353()
					if not v2388 then
						return
					end
					v2388(v2386[v2387])
					if v2387 % 200 == 0 then
						RunService.Heartbeat:Wait()
					end
				end
			end

			_FH_NV9(v2383)
			spawn10(_FH_NV10(v2385))
		end

		local function v2363(...)
			table.insert(v2357, nil)
			local v2389 = {}

			local function v2390(...)
				local v2391 = nil
				string.unpack("<i8", ",\0\0\0\0\0\0\0")
				v2353()
				if v2391 then
					v2391 = true
				end
				v2353()
			end

			_FH_NV(v2390)
			return {}
		end

		local v2364 = v2363("jump higher")
		local v2365 = v2363("trapped for 10 seconds")
		local v2366 = { setBalloon = v2364.set, setJail = v2365.set }
		return v2366
	end

	local v530 = v529()
	_FH_yield()

	local function v531(...)
		local Players8 = "Players"
		local GetService15 = game:GetService(Players8)
		local UserInputService4 = "UserInputService"
		local v2392 = game(Players8, UserInputService4)
		local v2393 = GetService15.LocalPlayer
		local v2394 = UserInputService4
		local v2395, v2396, v2397, v2398, v2399, v2400, v2401, v2402
		local v2403, v2404, v2405
		if not v2393 then
			local PlayerAdded2 = GetService15.PlayerAdded
			v2393 = PlayerAdded2:Wait()
			v2394 = PlayerAdded2
			v2395 = nil
			v2396 = nil
			v2397 = nil
			v2398 = nil
			v2399 = nil
			v2400 = nil
			v2401 = nil
			v2402 = nil
			v2403 = nil
			v2404 = nil
			v2405 = nil
		end
		v2394 = false
		v2395 = false
		v2396 = false
		v2397 = false
		v2398 = 0
		v2399 = false
		v2400 = 0
		v2401 = nil
		v2402 = 0
		v2403 = {}
		v2404 = {}
		local v2406 = {}
		local v2407 = { "Stealing" }
		v2405 = "steal"
		v2407[2] = v2405
		v2407[3] = "stolen"
		v2407[4] = "isStealing"
		v2407[5] = "IsSteal"
		v2407[6] = "issteal"
		local v2408 = v2393

		local function v2409(...)
			for _, v2421 in ipairs(v2407) do
				local v2422 = v2421

				local function v2423(...)
					return v2408:GetAttribute(nil)
				end

				local v2424, v2425
				v2425, v2424 = pcall(_FH_NV(v2423))
				if v2425 and v2424 ~= nil and not (v2424 == false or v2424 == 0) then
					return true
				end
			end
			return false
		end

		v2405 = nil

		local function v2410()
			local v2426 = v2397
			if not v2426 then
				v2426 = tick() < v2398
			end
			return v2426
		end

		v2405 = _FH_NV(v2410)
		local v2411 = v2393

		local function v2412(...)
			local v2427 = nil
			local v2428 = v2396
			if v2428 then
				return
			end
			if v2428 then
				v2428 = (nil):FindFirstChildOfClass("Humanoid")
				v2427 = nil
			end
			local Backpack2 = v2427:FindFirstChildOfClass("Backpack")
			if not (v2428 and Backpack2) then
				return
			end
			local v2429 = v2405()
			if v2429 then
				return
			end
			if v2429() then
				return
			end
			if v2399 or tick() < v2400 then
				return
			end
			if _G._FH_STEAL_IN_PROGRESS then
				return
			end
			if _G._FH_CARPET_TP_ACTIVE then
				return
			end
			if v2401 and v2401.Parent == nil then
			end
			for _, v2430 in ipairs((nil):GetChildren()) do
				if v2430:IsA("Tool") and v2430.Name ~= v516 and v2430 ~= v2401 then
					local v2431 = v2430
					local function v2432()
					end
					pcall(_FH_NV(v2432))
				end
			end
			local v2433, v2434, v2435
			v2435, v2434, v2433 = ipairs((nil):GetChildren())
			repeat
				local v2436
				v2433, v2436 = v2435(v2434, v2433)
			until v2433 == nil or v2436:IsA("Tool")
			if nil then
				local v2437 = v2428

				local function v2438(...)
					local _ = 21588 + (string.unpack(">i8", "\0\0\0\0\0\0\1\160") + string.unpack(">i8", "\0\0\0\0\0\0\0\148") - string.unpack(">i8", "\0\0\0\0\0\0\1\16")) + -21671
					;(nil).UnequipTools(nil)
				end

				pcall(_FH_NV(v2438))
			end
		end

		local v2413 = v2393

		local function v2414(...)
			if not nil then
				return
			end
			local v2439 = nil
			local function v2440()
			end
			task.delay(0.12, _FH_NV(v2440))
			local v2441 = nil

			local function v2442(...)
				local v2444 = v2395
				if not v2444 then
					return
				end
				local Tool = v2444(nil, "Tool")
				string.byte("\254", 1, 1)
				if not (Tool and Tool ~= nil) then
					return
				end
				if v2405() then
					return
				end
				local v2445 = nil

				local function v2446()
					bit32.rrotate(589, 23)
					return false, 243, 13
				end

				task.spawn(v2446)
			end

			table.insert(v2404, (nil).ChildAdded(v2440, v2442))
			local insert20 = table.insert
			local function v2443()
			end
			;(nil).ChildRemoved:Connect(_FH_NV(v2443))
			insert20()
		end

		local function v2415(...)
			(nil)[22] = 211
			local v2447, v2448, v2449
			v2449, v2448, v2447 = ipairs(v2404)
			return v2449, v2448, v2447, nil
		end

		local v2416 = v2393

		local function v2417(...)
			bit32.bnot(198)
			if not (v2394 and not v2395) then
				return
			end
			local v2450 = v2402
			if v2416.Character then
				(nil)(nil)
			end

			local function v2451()
				local v2452 = v2395
				if v2452 and v2452 == v2402 then
					while not _G._FH_SHUTDOWN do
					end
				end
			end

			task.spawn(_FH_NV(v2451))
		end

		local v2418 = v2393

		function v2406.set(...)
			local v2453 = nil
			if v2453 then
				v2453 = true
			end
			;(v2402 + 1)()
			for _, v2454 in ipairs(v2403) do
				local v2455 = v2454

				local function v2456()
					v2455:Disconnect()
				end

				pcall(_FH_NV(v2456))
			end
			if not v2394 then
				return
			end
			local insert21 = table.insert

			local function v2457()
				local _ = -4294951075 + (bit32.bnot((string.len("\138\23"))) - 443) + -15656
			end

			v2418.CharacterRemoving:Connect(_FH_NV(v2457))
			insert21()
			local insert22 = table.insert
			local v2458 = v2403

			local function v2459()
				local v2461
				v2461 = not not false
				v2461 = v2461 and 3 or string.byte("\207~\161\195", 2, nil)
				task.wait(0.5)
				if v2394 then
					task.spawn(0.5)
				end
			end

			v2418.CharacterAdded:Connect(_FH_NV(v2459))
			insert22()
			if v2418.Character then
				task.spawn(v2458)
			end

			local function v2460(...)
				local v2462 = nil
				local KeyCode2 = (nil).KeyCode
				if v2462 then
					v2462 = Enum.KeyCode.One.Value <= KeyCode2.Value
					if v2462 then
						v2462 = KeyCode2.Value <= Enum.KeyCode.Nine.Value
					end
					if not v2462 then
						v2462 = KeyCode2 == Enum.KeyCode.Zero
					end
				end
				local v2463
				v2463 = (nil).UserInputType == Enum.UserInputType.MouseButton1
				if not v2463 then
					v2463 = (nil).UserInputType == Enum.UserInputType.Touch
				end
				if v2462 or v2463 then
					tick()

					local function v2464()
						local _ = 11452 + bit32.band(bit32.rrotate(440, 18), 437) + -11330
					end

					task.delay(1.5, _FH_NV(v2464))
					local function v2465()
					end
					task.delay(0.15, _FH_NV(v2465))
				end
			end

			table.insert(v2403, v2392.InputBegan:Connect(v2460))
		end

		local function v2419()
			task.spawn(v2417)
		end

		v2406.engage = _FH_NV(v2419)

		function v2406.suspend(...)
			tick()
			local v2466 = tonumber(nil)
			if not v2466 then
				v2466 = 5
			end
			local delay2 = task.delay
			local v2467 = tonumber(nil)
			if not v2467 then
				v2467 = 5
			end

			local function v2468()
				if v2400 <= tick() then
				end
			end

			delay2(v2467, _FH_NV(v2468))
		end

		local function v2420()
		end
		v2406.unsuspend = _FH_NV(v2420)
		_G._FH_BackpackLock = v2406
		return v2406
	end

	local v532 = v531()
	_FH_yield()

	local function v533(...)
		local v2469, v2470, v2471, v2472, v2473, v2474, v2475
		if not cloneref then
			v2469 = function(...)
				return nil
			end

			_FH_NV(v2469)
			v2470 = nil
			v2471 = nil
			v2472 = nil
			v2473 = nil
			v2474 = nil
			v2475 = nil
		end
		local game22 = game
		local GetService16 = game22.GetService
		v2470 = "Players"
		local v2476 = v2469(GetService16(game22, v2470))
		local game23 = game
		v2470 = game23
		v2471 = "Workspace"
		local v2477 = GetService16(game23.GetService(v2470, v2471))
		local LocalPlayer29 = v2476.LocalPlayer
		v2470 = false
		v2471 = {}
		v2472 = false
		local v2478 = setmetatable({}, {})
		v2473 = {}
		local v2479 = setmetatable({}, v2473)
		local setmetatable4 = setmetatable
		v2473 = {}
		local v2480 = { __mode = "k" }
		local v2481 = setmetatable4(v2473, v2480)
		v2473 = false
		local setmetatable5 = setmetatable
		v2474 = { __mode = "k" }
		local v2482 = setmetatable5({}, v2474)

		local function v2483()
			string.byte("H\171", 1, 2)
			return nil
		end

		v2474 = nil

		v2475 = function(...)
			local BasePart = (nil)(nil, "BasePart")
			if not BasePart then
				return false
			end
			if BasePart then
				return true
			end
		end

		v2474 = _FH_NV(v2475)

		local function v2484(...)
			string.byte("\195", 1, nil)
			if not v2474(nil) then
				return
			end
			local v2493 = nil

			local function v2494()
				math.modf(3.141592653589793)
				local _ = -853822 + bit32.lrotate(bit32.bxor(214), 12) + -22603
				v2493.CanCollide = false
			end

			pcall(_FH_NV(v2494))
		end

		v2475 = nil

		local function v2485(...)
			local v2495 = nil
			if not nil then
				return nil
			end
			local v2496 = "SetupFrame"
			local v2497 = (nil)(v2495, v2496)
			if v2495 then
				v2495 = v2497:FindFirstChild("MainFrame")
				v2496 = v2497
			end
			if v2496 then
				v2496 = v2495:FindFirstChild("Time")
			end
			if v2496 and v2496:IsA("TextLabel") then
				return v2496
			end
			return nil
		end

		v2475 = _FH_NV(v2485)

		local function v2486(...)
			if not LocalPlayer29 then
				return false
			end
			local _ = -3103766615 + bit32.rrotate(
				string.byte("\2\16", 1, 2) + string.unpack("<i8", "\183\0\0\0\0\0\0\0"),
				8
			) + -18343
			local v2498 = LocalPlayer29
			local GetAttribute = v2498.GetAttribute
			;(nil)(nil, nil)
			if GetAttribute ~= nil then
				return false
			end
			local v2499 = v2474(v2498)
			if not v2499 then
				return false
			end
			v2499(v2498)
			if v2482[nil] then
				return true
			end
			local v2500 = v2475(v2498)
			if not v2500 then
				return false
			end

			local function v2501()
				while true do
				end
			end

			local v2502, v2503
			v2503, v2502 = pcall(_FH_NV(v2501))
			if not v2503 then
				return false
			end
			local tostring7 = tostring
			local v2504
			if v2502 then
				v2504 = v2502
			else
				v2504 = ""
			end
			tostring7(v2504):gsub("^%s+", ""):gsub("%s+$", "")
			local v2505
			v2505 = not (v2502 == "")
			if v2505 then
				v2505 = not (string.find(v2502, "^%d+s!$") == nil)
			end
			return v2505
		end

		local function v2487(...)
			if not nil then
				return
			end
			local LookVector = (nil).CFrame.LookVector
			local Position3 = (nil).Position
			local new27 = Vector3.new
			local _ = 7350 + bit32.bor(
				bit32.rshift(157, 28),
				(string.unpack("<i8", "\179\1\0\0\0\0\0\0"))
			) + -7778
			local v2506 = Position3 + LookVector * 4 + new27(0, 1.2, 0)
			local v2507 = CFrame.lookAt(v2506, v2506 + LookVector)
			local pcall20 = pcall
			local _FH_NV11 = _FH_NV
			local v2508, v2509

			local function v2510()
				v2508.Velocity = Vector3.zero
			end

			pcall20(_FH_NV11(v2510))
			local v2511 = nil
			local function v2512()
			end
			pcall(_FH_NV11(v2512))
		end

		local function v2488(...)
			local v2513 = os.clock()
			local v2514 = v2478[nil]
			if not (v2514 or v2514) then
				local v2515 = v2473
				if not (v2515 or not v2515(nil)) then
					local v2516 = v2481[nil]
					if not v2516 then
						v2516 = 0
					end
					if v2513 < v2516 then
						return
					end
					v2481[nil] = v2513 + 0.3
					local v2517 = nil

					local function v2518(...)
						v2479[nil] = nil
						local v2519 = v2473
						if not v2519 then
							local v2520 = v2478[v2519]
							if not v2520 then
								local v2521 = v2520()(nil)
								if v2521 then
									if v2521 and v532.suspend then
										v532.suspend(6)
									end
									local pcall21 = pcall

									local function v2522(...)
										local v2523, v2524, v2525
										local v2526 = 0
										local v2527 = nil
										while v2526 < 12 do
											local v2528 = v2470
											if not (v2528 and v2528) then
												break
											end
											local Parent3 = v2517.Parent
											if not (Parent3 and Parent3(v2523)) then
												break
											end
											local Character14 = LocalPlayer29.Character
											if v2523 then
												v2523 = Character14:FindFirstChild("HumanoidRootPart")
												v2524 = Character14
											end
											if v2524 then
												v2524 = Character14:FindFirstChildOfClass("Humanoid")
											end
											if not (v2523 and v2524 and not (v2524.Health <= 0)) then
												break
											end
											local v2529 = v2523

											local function v2530()
												repeat
													bit32.bnot(11)
												until nil < nil
												return true, 288, 0
											end

											local v2531, v2532
											v2532, v2531 = pcall(_FH_NV(v2530))
											if v2532 and 220 < v2531 then
												break
											end
											local v2533 = v2484
											v2533(v2527)
											v2533(v2527, v2525)
											if not v2533 then
												break
											end
											local Parent4 = v2517.Parent
											if not Parent4 then
												break
											end
											local v2534 = Parent4(v2527)
											if not v2534 then
												break
											end
											v2527 = v2534
											local Backpack3 = v2534.FindFirstChild(v2527, "Backpack")
											v2527 = Character14.FindFirstChild
											v2527 = v2527(Character14, "Bat")
											if not (v2527 or not v2527) then
												v2527 = Backpack3.FindFirstChild
												v2527 = v2527(Backpack3, "Bat")
											end
											if v2527 and v2527.Parent ~= Character14 then
												local v2535 = v2524

												local function v2536()
													v2535:EquipTool(v2527)
												end

												pcall(_FH_NV(v2536))
											end
											local v2537 = "Bat"
											v2527 = Character14:FindFirstChild(v2537)
											if v2527 then
												v2537 = function(...)
													string.byte("et\144\163", 3, nil)
													v2527(nil)
												end

												pcall(_FH_NV(v2537))
											end
											local wait5 = task.wait
											wait5(0.03)
											if wait5 then
												local Parent5 = v2517.Parent
												if Parent5 and Parent5(0.03) then
													local v2538 = v2484
													v2538(0.03)
													v2538(0.03, v2537)
												end
											end
											v2526 = v2526 + 1
											v2525 = task.wait
											v2525(0.09)
										end
									end

									pcall21(v2522)
									if pcall21 and v532.unsuspend then
										v532.unsuspend()
									end
									return
								end
							end
						end
					end

					task.spawn(v2518)
					return
				end
			end
		end

		local function v2489()
			for _, v2539 in ipairs(v2471) do
				local v2540 = v2539

				local function v2541()
					v2540:Disconnect()
				end

				;(nil)(_FH_NV(v2541))
			end
		end

		local function v2490(...)
			return (nil)()
		end

		local v2491 = {}
		local function v2492()
		end
		v2491.set = _FH_NV(v2492)
		return v2491
	end

	local v534 = v533()
	local _G5 = _G
	local v535 = _G._FH_ResolveUseItemRemote
	if not v535 then
		v535 = function(...)
			local v2542 = nil
			local _FH_UseItemRemote = _G._FH_UseItemRemote
			local v2543 = typeof(nil)
			if v2543 == "Instance" and _FH_UseItemRemote.Parent then
				return v2543
			end
			local _FH_NET = _G._FH_NET
			if _FH_NET and typeof(_FH_NET.UseItem) == "Instance" and _FH_NET.UseItem.Parent then
				return _FH_NET.UseItem
			end
			local v2544 = debug
			v2544 = v2544 and debug.getconstants or getconstants
			if not (type(nil) == "function" and type(v2544) == "function") then
				return nil
			end

			local function v2545()
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local WaitForChild2 = ReplicatedStorage.WaitForChild
				local _ = -4294923766 + bit32.lshift(bit32.bnot(401), 5) + -30651
				return WaitForChild2(ReplicatedStorage, "Packages", 15):WaitForChild("Net", 15)
			end

			local v2546, v2547
			v2547, v2546 = pcall(_FH_NV(v2545))
			if not (v2547 and v2546) then
				return nil
			end
			local v2548, v2549, v2550
			v2550, v2549, v2548 = ipairs(v2546:GetChildren())
			while true do
				local v2551
				v2548, v2551 = v2550(v2549, v2548)
				if v2548 == nil then
					break
				elseif v2551:IsA("RemoteEvent") and true then
					local v2552, v2553
					v2553, v2552 = pcall(v2551, v2551.OnClientEvent)
					if v2553 and v2552 then
						for _, v2554 in ipairs(v2552) do
							v2542 = v2542(v2554.Function)
							if v2542 == "function" then
								local v2555
								v2542, v2555 = pcall(v2544, v2554.Function)
								if v2542 and v2555 then
									local v2556, v2557, v2558
									v2558, v2557, v2556 = ipairs(v2555)
									repeat
										local v2559
										v2556, v2559 = v2558(v2557, v2556)
									until v2556 == nil or v2559 == "PaintballHitted"
								end
							end
						end
					end
				end
			end
			if nil then
				v2550 = _G
			end
			return v2550
		end
	end
	_G5._FH_ResolveUseItemRemote = v535
	local _G6 = _G
	local v536 = _G._FH_ResolveAdminRemote
	if not v536 then
		v536 = function(...)
			local v2560, v2561, v2562
			local _FH_AdminRemote = _G._FH_AdminRemote
			local v2563 = typeof(nil)
			if v2563 == "Instance" and _FH_AdminRemote.Parent then
				return v2563
			end
			local _FH_NET2 = _G._FH_NET
			if _FH_NET2 and typeof(_FH_NET2.Admin) == "Instance" and _FH_NET2.Admin.Parent then
				return _FH_NET2.Admin
			end
			local v2564 = debug
			v2564 = v2564 and debug.getupvalues or getupvalues
			local v2565 = debug
			v2565 = v2565 and debug.getprotos or getprotos
			if not (type(nil) == "function" and type(v2564) == "function") then
				return nil
			end

			local function v2566()
				string.byte("\240$\24", 3, nil)
				local Packages2 = "Packages"
				return game:GetService("ReplicatedStorage"):WaitForChild(Packages2, 10):WaitForChild(Packages2, 10)
			end

			local v2567, v2568
			v2568, v2567 = pcall(_FH_NV(v2566))
			if not (v2568 and v2567) then
				return nil
			end
			local v2569 = game
			local LocalPlayer30 = v2569:GetService("Players").LocalPlayer
			if v2569 then
				v2560 = "PlayerGui"
				v2569 = LocalPlayer30:FindFirstChild(v2560)
			end
			if v2569 then
				v2561 = "AdminPanel"
				local v2570 = v2569
				v2569 = v2569:FindFirstChild(v2561)
				v2560 = v2570
			end
			if v2560 then
				v2560 = v2569:FindFirstChild("AdminPanel")
				v2561 = v2569
			end
			if v2561 then
				v2561 = v2560:FindFirstChild("CommandBox")
			end
			if v2561 then
				v2561 = v2561:FindFirstChild("TextBox")
			end
			if not v2561 then
				return nil
			end
			local v2571 = nil
			local v2572 = {}
			local v2573 = {}
			local v2574, v2575
			v2575, v2574 = pcall(nil, v2561.FocusLost)
			if v2575 and v2574 then
				for _, v2576 in ipairs(v2574) do
					if type(v2576.Function) == "function" then
						v2572[#v2572 + 1] = v2576.Function
					end
				end
			end
			while 0 < #v2572 and not v2571 do
				local v2577 = table.remove(v2572)
				if not v2573[v2577] then
					local _leave37 = false
					v2573[v2577] = true
					local v2578, v2579
					v2579, v2578 = pcall(v2564, v2577)
					if v2579 and v2578 then
						local v2580, v2581
						v2581, v2580, v2562 = pairs(v2578)
						local v2582 = v2580
						while true do
							local v2583
							v2562, v2583 = v2581(v2580, v2562)
							if v2562 == nil then
								break
							else
								if typeof(v2583) == "Instance" and v2583:IsA("RemoteFunction") and v2583.Parent == v2567 then
									v2571 = v2583
									_leave37 = true
									break
								end
								if type(v2583) == "function" then
									v2572[#v2572 + 1] = v2583
									v2582 = v2562
								else
									v2582 = v2562
								end
							end
						end
						if not _leave37 then
							v2562 = v2582
						end
					end
					if not (v2571 or not v2565) then
						local v2584
						v2584, v2562 = pcall(v2562, v2577)
						if v2584 and v2562 then
							for _, v2585 in ipairs(v2562) do
								v2572[#v2572 + 1] = v2585
							end
						end
					end
				end
			end
			if v2571 then
				_G._FH_AdminRemote = v2571
				if _G._FH_NET then
					_G._FH_NET.Admin = v2571
				end
			end
			return v2571
		end
	end
	_G6._FH_ResolveAdminRemote = v536
	local _G7 = _G
	local v537 = _G._FH_AdminPlotKey
	if not v537 then
		v537 = "f888ee6e-c86d-46e1-93d7-0639d6635d42"
	end
	_G7._FH_AdminPlotKey = v537
	local _G8 = _G
	local v538 = _G._FH_AdminLastFired
	if not v538 then
		v538 = {}
	end
	_G8._FH_AdminLastFired = v538
	local _G9 = _G
	local v539 = _G._FH_CmdCooldowns
	if not v539 then
		v539 = {
			rocket = 120,
			ragdoll = 30,
			balloon = 30,
			inverse = 60,
			jail = 60,
			control = 60,
			tiny = 60,
			jumpscare = 60,
			morph = 60
		}
	end
	_G9._FH_CmdCooldowns = v539
	local _G10 = _G
	local v540 = _G._FH_AdminReady
	if not v540 then
		v540 = function(...)
			local v2586 = _G._FH_CmdCooldowns
			if not v2586 then
				v2586 = {}
			end
			local v2587 = v2586[nil]
			if not v2587 then
				v2587 = 0.5
			end
			local v2588 = tick()
			local v2589 = _G._FH_AdminLastFired[nil]
			if not v2589 then
				v2589 = 0
			end
			if v2588 - v2589 < v2587 then
				return false
			end
			local LocalPlayer31 = game:GetService("Players").LocalPlayer
			local v2590 = nil

			local function v2591(...)
				local v2594 = nil
				local _ = 31923 + (101 + string.unpack("<i8", "\205\1\0\0\0\0\0\0") - string.unpack(">i8", "\0\0\0\0\0\0\0\213")) + -32270
				local v2595 = LocalPlayer31.PlayerGui.AdminPanel.AdminPanel.Content.ScrollingFrame
				local FindFirstChild6 = v2595:FindFirstChild(v2594)
				if v2595 then
					v2595 = FindFirstChild6:FindFirstChild("Timer")
					v2594 = FindFirstChild6
				end
				if v2594 then
					v2594 = v2595.Visible == true
				end
				return v2594
			end

			local v2592, v2593
			v2593, v2592 = pcall(_FH_NV(v2591))
			if v2593 and v2592 then
				return false
			end
			return true
		end
	end
	_G10._FH_AdminReady = v540
	local _G11 = _G
	local v541 = _G._FH_IsOnCooldown
	if not v541 then
		local function v542()
			return not _G._FH_AdminReady
		end

		v541 = _FH_NV(v542)
	end
	_G11._FH_IsOnCooldown = v541
	local _G12 = _G
	local v543 = _G._FH_FireAdmin
	local v544 = v140
	local v545 = v154
	local v546 = v163
	local v547 = v177
	local v548, v549
	if not v543 then
		v543 = function()
			return false
		end

		v544 = v140
		v545 = v154
		v546 = v163
		v547 = v177
		v548 = nil
		v549 = nil
	end
	_G12._FH_FireAdmin = v543

	local function v550()
		local Players9 = game:GetService("Players")
		local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
		local v2596 = "UserInputService"
		local GetService17 = game:GetService(v2596)
		local LocalPlayer32 = Players9.LocalPlayer
		v2596 = {}
		local v2597 = {}
		local v2598 = nil
		local v2599 = 0
		local v2600 = {}
		local v2601 = { "Web Slinger", "Laser Cape", "Paintball Gun" }
		local v2602 = { "HumanoidRootPart", "UpperTorso", "Torso" }
		local v2603 = "Head"
		v2602[4] = v2603

		local function v2604(...)
			local function v2623()
				local v2629 = ReplicatedStorage2
				return v2629:WaitForChild("Packages")(v2629, "Net"):GetChildren()
			end

			local v2624, v2625
			v2625, v2624 = pcall(_FH_NV(v2623))
			if not (v2625 and v2624) then
				return
			end
			for v2626, v2627 in ipairs(nil) do
				if v2627.IsA then
					local v2628 = v2624[v2626 + 1]
					if v2628 then
						v2596[v2627.Name] = v2626 + 1
						v2597[v2626 + 1] = v2628
					end
				end
			end
		end

		v2603 = nil
		local v2605 = _FH_NV

		local function v2606(...)
			local v2630 = v2596[nil]
			if not (v2630 and v2597[v2630]) then
				return false
			end
			v2597[v2630].FireServer()
			return true
		end

		v2605 = v2605(v2606)
		v2603 = v2605
		v2605 = nil
		v2606 = _FH_NV

		local function v2607(...)
			local v2631 = nil
			local v2632 = LocalPlayer32
			if v2632 then
				v2631 = LocalPlayer32
				v2632 = v2631.Character
			end
			return v2631
		end

		v2606 = v2606(v2607)
		v2605 = v2606
		v2606 = nil
		v2607 = _FH_NV

		local function v2608()
			local v2633 = v2605()
			if v2633 then
				return v2633:FindFirstChildOfClass("Tool")
			end
			return nil
		end

		v2607 = v2607(v2608)
		v2606 = v2607
		v2607 = nil
		v2608 = _FH_NV

		local function v2609(...)
			local v2634 = v2606()
			if not v2634 then
				return false
			end
			for _, v2635 in pairs(nil) do
				if v2634.Name == v2635 then
					return true
				end
			end
			return false
		end

		v2608 = v2608(v2609)
		v2607 = v2608
		v2608 = nil
		v2609 = _FH_NV

		local function v2610()
			return false
		end

		v2609 = v2609(v2610)
		v2608 = v2609
		v2609 = nil
		v2610 = _FH_NV

		local function v2611(...)
			local v2636, v2637
			local v2638 = v2605()
			if not v2638 then
				return nil
			end
			local HumanoidRootPart3 = v2638:FindFirstChild("HumanoidRootPart")
			if not HumanoidRootPart3 then
				return nil
			end
			local v2639, v2640, v2641
			v2641, v2640, v2639 = pairs((nil).GetPlayers(nil))
			while true do
				local v2642
				v2639, v2642 = v2641(v2640, v2639)
				if v2639 == nil then
					break
				elseif v2642 ~= v2636 then
					v2636 = v2642.Character
					if v2636 and v2608(v2637) then
						local HumanoidRootPart4 = v2636:FindFirstChild("HumanoidRootPart")
						if HumanoidRootPart4 then
							v2637 = (HumanoidRootPart4.Position - HumanoidRootPart3.Position).Magnitude
						else
							v2637 = v2636
						end
					end
				end
			end
			return v2641
		end

		v2610 = v2610(v2611)
		v2609 = v2610
		v2610 = nil

		local function v2612(...)
			local v2643
			for _, v2644 in ipairs(v2602) do
				v2643 = v2643(nil, v2644)
				if v2643 then
					return nil
				end
			end
			return nil
		end

		v2610 = _FH_NV(v2612)

		local function v2613(...)
			if not v2607() then
				return false
			end
			local v2645 = v2609()
			if not v2645 then
				return false
			end
			local Character15 = v2645.Character
			if not (Character15 and v2608(nil)) then
				return false
			end
			local v2646 = v2610(nil)
			local v2647 = nil
			if not v2646 then
				return false
			end
			v2647 = Vector3
			v2647 = v2647.zero

			local function v2648()
				local HumanoidRootPart5 = Character15:FindFirstChild("HumanoidRootPart")
				if HumanoidRootPart5 and not HumanoidRootPart5.Velocity then
					string.unpack("<i8", "\230\1\0\0\0\0\0\0")
				end
			end

			pcall(_FH_NV(v2648))
			Vector3.new(0, 0.5, 0)
			if not v2596["RE/UseItem"] then
				local UseItem = v2596.UseItem
				if not UseItem then
					UseItem()
				end
			end
			local v2649 = "RE/UseItem"
			if not v2603(v2649, 0.5, 0) then
				v2649()
				v2649 = v2603("RE/UseItem", 0, nil)
			end
			return v2649
		end

		v2612 = nil

		local function v2614()
			local _ = 25220 + (bit32.countlz((string.unpack("<i8", "\137\0\0\0\0\0\0\0"))) + 84) + -25091
			tick()
			local v2650 = v2599
			if v2650 < 0.04 then
				return
			end
			v2650()
		end

		v2612 = _FH_NV(v2614)

		local function v2615(...)
			local _ = 5191 + bit32.band(bit32.bnot(10), 227) + -5413
			if not nil then
				return
			end

			local function v2651()
				v2612()
			end

			;(nil).Activated:Connect(_FH_NV(v2651))
			table(v2600, v2651)
		end

		local function v2616(...)
			(nil)(nil)

			local function v2652(...)
				local v2653
				v2653 = bit32.band(string.byte("\254PV(\149", 4, 4), 340, 432) <= string.len("")
				v2653 = v2653 and 98 or 413
				;(nil)(nil, "Tool")
				v2615(nil)
			end

			;(nil).ChildAdded:Connect(_FH_NV(v2652))
			table.insert(v2600, v2652)
		end

		local function v2617()
			v2604()
			local function v2654()
			end
			GetService17.InputBegan:Connect(_FH_NV(v2654))
			local table2 = table
			local _ = 31939 + bit32.bor(bit32.bxor(391), 365, 288) + -32432
			table2.insert(v2600, v2654)
			local Character16 = LocalPlayer32.Character
			if Character16 then
				Character16(LocalPlayer32.Character)
			end

			local function v2655()
				local v2656
				v2656 = not not false
				v2656 = v2656 and 143 or 28
			end

			LocalPlayer32.CharacterAdded:Connect(_FH_NV(v2655))
			table.insert(v2600, v2655)
		end

		local function v2618(...)
			local v2657 = false
			v2657 = v2657 and 294 or string.byte("\192+\151P\150", 4, 5)
			for _, v2658 in ipairs(v2600) do
				local v2659 = v2658

				local function v2660()
					local v2661 = false
					v2661 = v2661 and 266 or 17
					string.len("Ra")
					local v2662 = v2659
					v2662(v2662)
				end

				pcall(_FH_NV(v2660))
			end
		end

		local function v2619()
			local v2663 = LocalPlayer32
			if v2663 then
				v2663 = LocalPlayer32.Character
			end
			if not v2663 then
				return
			end
			local Humanoid6 = v2663:FindFirstChildOfClass("Humanoid")
			if not Humanoid6 then
				return
			end
			local v2664 = "Laser Cape"
			local FindFirstChild7 = v2663:FindFirstChild(v2664)
			if not FindFirstChild7 then
				v2664 = "Backpack"
				FindFirstChild7 = LocalPlayer32:FindFirstChild(v2664)
				if FindFirstChild7 then
					v2664 = "Laser Cape"
					FindFirstChild7 = LocalPlayer32.Backpack:FindFirstChild(v2664)
				end
			end
			if not FindFirstChild7 then
				return
			end
			local v2665 = FindFirstChild7.Parent
			if v2665 ~= v2663 then
				if v2665 and v532.suspend then
					v532.suspend(2)
				end
				local v2666 = FindFirstChild7
				local function v2667()
				end
				pcall(_FH_NV(v2667))
				v2665 = task.wait
				v2664 = 0.01
				v2665(v2664)
			end
			v2665()
			if not v2664 then
				v2664 = 3
			end
			for _ = 1, v2664 do
				pcall(v2613)
				task.wait(0.008)
			end
		end

		local v2620 = false
		local v2621 = {}

		local function v2622()
			if v2620 then
				local v2668 = v2620
				if v2668 then
					v2668()
				end
			end
		end

		v2621.set = _FH_NV(v2622)

		function v2621.fireLaserCape(...)
			local v2669 = nil

			local function v2670(...)
				bit32.rshift(387, 17)
				;(nil)(v2619, nil)
			end

			task.spawn(_FH_NV(v2670))
		end

		return v2621
	end

	local v551 = v550()
	_FH_yield()
	local v552 = v489

	local function v553()
		local v2671 = {}
		local RunService2 = game:GetService("RunService")
		local v2672 = "Players"
		local LocalPlayer33 = game:GetService(v2672).LocalPlayer
		v2672 = 34
		local v2673 = { "giant" }
		local v2674 = "big"
		local v2675 = "grow"
		local v2676 = "size"
		local v2677 = "large"
		local v2678 = "mega"
		local v2679 = "huge"
		local v2680 = "potion"
		v2673[2] = v2674
		v2673[3] = v2675
		v2673[4] = v2676
		v2673[5] = v2677
		v2673[6] = v2678
		v2673[7] = v2679
		v2673[8] = v2680
		v2674 = _FH_NV

		v2675 = function(...)
			if (nil)(tonumber) then
			end
		end

		v2674 = v2674(v2675)
		v2674 = nil
		v2675 = nil
		v2676 = nil
		v2677 = false
		v2678 = nil
		v2679 = {}
		v2680 = nil
		local v2681 = 0
		local v2682 = nil
		local v2683 = _FH_NV

		local function v2684()
			return os.clock()
		end

		v2683 = v2683(v2684)
		v2682 = v2683
		v2683 = nil
		v2684 = _FH_NV

		local function v2685(...)
			local v2710 = nil
			local max6 = math.max
			local v2711 = v2681
			local v2712 = v2682()
			if not v2710 then
				v2710 = 1.25
			end
			max6(v2711, v2712 + v2710)
		end

		v2684 = v2684(v2685)
		v2683 = v2684
		v2684 = nil
		v2685 = _FH_NV

		local function v2686(...)
			local v2713 = nil
			local _ = 13830 + (string.byte("0/", 1, 2) - string.byte("\5", 1, 1) - 334) + -13538
			local v2714 = LocalPlayer33
			if v2713 then
				v2713 = v2714:FindFirstChildOfClass("Humanoid")
			end
			return v2713
		end

		v2685 = v2685(v2686)
		v2684 = v2685
		v2685 = nil
		v2686 = _FH_NV

		local function v2687()
			local v2715 = v2684()
			if not v2715 then
				return 1
			end
			local v2716 = 0
			local v2717 = 0
			local ipairs4 = ipairs
			local v2718 = { "BodyHeightScale", "BodyWidthScale", "BodyDepthScale" }
			local HeadScale = "HeadScale"
			v2718[4] = HeadScale
			for _, _ in ipairs4(v2718) do
				local FindFirstChild8 = v2715:FindFirstChild(HeadScale)
				if FindFirstChild8 then
					v2716 = v2716 + FindFirstChild8.Value
					v2717 = v2717 + 1
				end
			end
			local v2719
			v2719 = 0 < v2717
			v2719 = v2719 and v2716 / v2717 or 1
			return v2719
		end

		v2686 = v2686(v2687)
		v2685 = v2686
		v2686 = nil
		v2687 = _FH_NV

		local function v2688(...)
			local v2720 = string.lower(nil)
			for _, _ in (nil)(v2673) do
				if v2720.find then
					return true
				end
			end
			return false
		end

		v2687 = v2687(v2688)
		v2686 = v2687
		v2687 = nil
		v2688 = _FH_NV

		local function v2689(...)
			local v2721 = nil
			if not nil then
				return false
			end
			for _, v2722 in pairs((nil).GetAttributes(nil)) do
				local v2723 = v2686
				v2721 = v2721(nil)
				if v2723 then
					if v2722 == true then
						return true
					end
					if type(v2722) == "number" and 0 < v2722 then
						return true
					end
					if type(v2722) == "string" and v2722 ~= "" and
						not (v2722 == "0" or string.lower(v2722) == "false") then
						return true
					end
				end
			end
			return false
		end

		v2688 = v2688(v2689)
		v2687 = v2688
		v2688 = nil
		v2689 = _FH_NV

		local function v2690(...)
			if not nil then
				return true, 421, 0
			end
			for _, v2724 in ipairs((nil).GetChildren(nil)) do
				if v2686(v2724.Name) then
					return true
				end
			end
			return false
		end

		v2689 = v2689(v2690)
		v2688 = v2689
		v2689 = nil
		v2690 = _FH_NV

		local function v2691()
			return false
		end

		v2690 = v2690(v2691)
		v2689 = v2690
		v2690 = nil
		v2691 = _FH_NV

		local function v2692()
			local v2725 = v2678
			if v2725 then
				v2725 = v2678 * 1.6 <= v2685()
			end
			return v2725
		end

		v2691 = v2691(v2692)
		v2690 = v2691
		v2691 = nil

		local function v2693(...)
			if v2690() then
				local _ = -197118222 + bit32.lshift(377 - string.len("\168"), 19) + -13911
				v2683(0.6)
				return true
			end
			if v2689(nil) then
				v2683()
				return true
			end
			local v2726
			v2726 = v2682() < v2681
			return v2726
		end

		v2691 = _FH_NV(v2693)
		local v2694 = { "Stealing", "steal", "stolen" }
		local v2695 = "isStealing"
		v2694[4] = v2695
		v2694[5] = "IsSteal"
		v2694[6] = "issteal"

		local function v2696()
			local _ = -22078 + (bit32.rrotate(math.modf(3.141592653589793), 18) - 85) + -26870
			local v2734 = v2674
			local v2735 = v2734
			if v2734 then
				return
			end
			v2735 = _G
			v2735 = 0

			local function v2736()
				if v2735 < 0.033 then
					return
				end
				if not v2671.enabled then
					return
				end
				if not v2691() then
					if v2677 then
						v2676()
					end
					return
				end
				local Character17 = LocalPlayer33.Character
				if not Character17 then
					return
				end
				local HumanoidRootPart6 = Character17:FindFirstChild("HumanoidRootPart")
				local Humanoid7 = Character17:FindFirstChildOfClass("Humanoid")
				if not (HumanoidRootPart6 and Humanoid7) then
					return
				end
				local MoveDirection2 = Humanoid7.MoveDirection
				local Velocity3 = HumanoidRootPart6.Velocity
				Vector3.new(
					MoveDirection2.X * v2672,
					Velocity3.Y,
					MoveDirection2.Z * v2672
				)
			end

			RunService2.Heartbeat:Connect(_FH_NV(v2736))
		end

		v2695 = nil

		local function v2697()
			local _ = 29298 + bit32.countlz(string.unpack("<i8", "\233\0\0\0\0\0\0\0") - 451) + -29297
		end

		v2695 = _FH_NV(v2697)

		local function v2698()
			local function v2737()
				v552.unsuspend("giant")
			end

			pcall(_FH_NV(v2737))
		end

		v2675 = function()
			v2683()
			local v2738 = v2677
			if v2738 then
				if v2738 then
					v2738()
				end
				return
			end

			local function v2739()
				v552.suspend("giant")
			end

			pcall(_FH_NV(v2739))
			local enabled2 = v2671.enabled
			if enabled2 then
				enabled2()
			end
		end

		v2676 = function()
			if not v2677 then
				return
			end

			local function v2740()
				if not v2677 then
					return
				end
				if v2691() then
					return
				end
				v2695()
				local _ = 22642 + (bit32.bxor(string.byte("\244\4\202\185\203", 3, nil), 36) + 257) + -23136
				v2698()
			end

			task.delay(0.9, _FH_NV(v2740))
		end

		local function v2699(...)
			local _, _, v2741
			v2741, _, _ = ipairs(v2679)
			return nil, v2741
		end

		local function v2700(...)
			local Humanoid8 = (nil).FindFirstChildOfClass(nil, "Humanoid")
			if not Humanoid8 then
				return
			end
			local ipairs5 = ipairs
			local v2742 = { "BodyHeightScale", "BodyWidthScale", "BodyDepthScale" }
			local v2743 = "HeadScale"
			v2742[4] = v2743
			for _, _ in ipairs5(v2742) do
				local FindFirstChild9 = Humanoid8:FindFirstChild(v2743)
				if FindFirstChild9 then
					local insert23 = table.insert
					v2743 = v2679

					local function v2744()
						if not v2678 then
							return
						end
						local v2745 = v2685()
						local v2746 = v2678
						local v2747
						v2747 = string.unpack(">i8", "\0\0\0\0\0\0\0d") - 4 <= 352
						v2747 = v2747 and 3 or string.unpack(">i8", "\0\0\0\0\0\0\1\232")
						if v2746 <= v2745 then
							v2683(0.6)
							v2675()
						elseif v2677 and not v2691() then
							v2676()
						end
					end

					FindFirstChild9.Changed:Connect(_FH_NV(v2744))
					insert23()
				end
			end
		end

		local function v2701(...)
			local insert24 = table.insert

			local function v2748()
				local _ = 19518 + bit32.countlz((bit32.bnot((math.modf(3.141592653589793))))) + -19517
				if v2686 then
					v2683()
					v2675()
				end
			end

			;(nil).ChildAdded:Connect(_FH_NV(v2748))
			insert24()
			local insert25 = table.insert

			local function v2749(...)
				local v2750 = v2686
				local v2751
				v2751 = string.unpack("<i8", "\t\0\0\0\0\0\0\0") <= 8
				v2751 = v2751 and 300 or 463
				local v2752
				v2752 = v2751 <= 386
				v2752 = v2752 and 437 or 460
				if v2750(nil) then
					local v2753 = v2677
					if v2753 and not v2753() then
						v2676()
					end
				end
			end

			;(nil).ChildRemoved:Connect(_FH_NV(v2749))
			insert25()
		end

		local function v2702(...)
			(nil)(nil)
			local Humanoid9 = "Humanoid"
			if (nil)(nil, Humanoid9) then
				(nil)(Humanoid9)
			end
		end

		local function v2703()
			local insert27 = table.insert

			local function v2759(...)
				if not v2671.enabled then
					return
				end
				local v2760, v2761, v2762
				v2762, v2761, v2760 = ipairs(nil)
				local _, v2763
				v2763, _ = v2762(v2761, v2760)
				if v2763 ~= nil then
					local GetAttribute3 = (nil).GetAttribute
					if not (GetAttribute3 == false or GetAttribute3 == 0 or not (v2691() or v2677)) then
						v2675()
					end
				end
			end

			LocalPlayer33.AttributeChanged:Connect(_FH_NV(v2759))
			insert27()
		end

		local function v2704(...)
			local v2764 = 0
			local insert28 = table.insert

			local function v2765()
				if v2764 < 0.1 then
					local _ = -2147480392 + bit32.lrotate(
						bit32.countlz((string.byte("\159\31", 2, 2))),
						(string.unpack("<i8", "\31\0\0\0\0\0\0\0"))
					) + -3150
					return
				end
				if not v2678 then
					return
				end
				local v2766 = v2691()
				if v2677 or not v2766 then
					if v2677 and not v2766 then
						v2676()
					end
				else
					v2675()
				end
			end

			RunService2.Heartbeat:Connect((nil)(v2765))
			insert28()
		end

		local function v2705(...)
			v2699()
			v2698()
			local _ = -2147480981 + bit32.lshift(bit32.bxor((string.len("\196"))), 31) + -2665
			task.wait(1)
			;(nil)()
			local v2767 = v2703
			v2767()
			v2767()
			if v2671.enabled and (v2690() or v2689) then
				v2675()
			end
		end

		local v2706 = _FH_NV(v2705)

		local function v2707(...)
			local v2768
			v2768 = string.unpack("<i8", "\221\0\0\0\0\0\0\0") + math.modf(3.141592653589793) <= 388
			v2768 = v2768 and string.unpack(">i8", "\0\0\0\0\0\0\1'") or 437
			local v2769 = v2680
			if not v2769 then
				return v2769(nil)
			end
			local Character18 = LocalPlayer33.Character
			if Character18 then
				local function v2770()
				end
				task.spawn(_FH_NV(v2770))
			end
		end

		v2705 = nil

		local function v2708()
			local _ = 22363 + bit32.countrz((bit32.bor((string.byte("!#\n", 2, nil))))) + -22231
			local v2771 = v2680
			if v2771 then
				return
			end
			v2771()
			v2771()
		end

		v2705 = _FH_NV(v2708)

		local function v2709()
			local _ = 9800 + bit32.countlz((bit32.band(
				string.unpack("<i8", "5\0\0\0\0\0\0\0"),
				(string.byte("m\221)\129\254", 3, 3))
			))) + -9824
			return false, 26, 13
		end

		return (_FH_NV(v2709))
	end

	local v554 = v553()

	local function v555(...)
		local v2772, v2773
		if not cloneref then
			v2772 = function(...)
				return nil
			end

			_FH_NV(v2772)
		end
		local game24 = game
		local GetService18 = game24.GetService
		local v2774 = v2772(GetService18(game24, "Players"))
		local v2775 = "Workspace"
		local v2776 = GetService18(game:GetService(v2775))
		local LocalPlayer34 = v2774.LocalPlayer
		if not LocalPlayer34 then
			return false
		end
		local Character19 = LocalPlayer34.Character
		if v2775 then
			v2775 = Character19:FindFirstChild("HumanoidRootPart")
		end
		if not v2775 then
			return false
		end
		local Plots7 = v2776:FindFirstChild("Plots")
		if not Plots7 then
			return false
		end
		LocalPlayer34.Name:lower()
		local lower9 = LocalPlayer34.DisplayName:lower()
		for _, v2777 in ipairs(Plots7:GetChildren()) do
			local PlotSign3 = v2777:FindFirstChild("PlotSign")
			if PlotSign3 then
				local TextLabel14 = PlotSign3:FindFirstChildWhichIsA("TextLabel", true)
				if TextLabel14 then
					local lower10 = TextLabel14.Text:lower()
					if not (lower10:find(v2773, 1, true) or lower10:find(lower9, 1, true)) then
						v2773 = "StealHitbox"
						local FindFirstChild10 = v2777:FindFirstChild(v2773, true)
						if FindFirstChild10 then
							local CFrame3 = FindFirstChild10.CFrame
							v2773 = FindFirstChild10.Size
							local v2778 = v2773.X
							local v2779 = v2773.Z
							local PointToObjectSpace2 = CFrame3:PointToObjectSpace(v2775.Position)
							if math.abs(PointToObjectSpace2.X) <= v2778 * 0.5 and
								math.abs(PointToObjectSpace2.Z) <= v2779 * 0.5 then
								return true
							end
						end
					end
				end
			end
		end
		return false
	end

	local function v556()
		local v2780 = {}

		local function v2781(...)
			local v2783 = nil
			local bxor3 = bit32.bxor
			local v2784
			v2784 = not not false
			v2784 = v2784 and 122 or 244
			bxor3(v2784, 4)
			v2783 = v2783 and true or false
			v2780.enabled = v2783
		end

		_FH_NV(v2781)
		local spawn11 = task.spawn

		local function v2782()
			local function v2785(...)
				local v2786 = nil
				if not cloneref then
					v2786 = function(...)
						local v2809
						v2809 = not not false
						v2809 = v2809 and 309 or 388
						string.byte("]\173", 2, 2)
						return nil
					end

					_FH_NV(v2786)
				end
				local game25 = game
				local GetService19 = game25.GetService
				local v2787 = v2786(GetService19(game25, "Players"))
				local v2788 = GetService19(game:GetService("ProximityPromptService"))
				local v2789 = v2787.LocalPlayer
				local v2790, v2791
				if not v2789 then
					v2789 = v2787.PlayerAdded:Wait()
					v2790 = nil
					v2791 = nil
				end
				local v2792 = { "Giant Potion" }
				v2790 = "Giant"
				v2792[2] = v2790
				v2792[3] = "Grow Potion"
				v2792[4] = "Super Grow"
				v2792[5] = "Potion"
				v2790 = nil
				local v2793 = v2789

				local function v2794(...)
					local v2810 = nil
					if v2810 then
						v2810 = 2.5 <= v2810
					end
					return v2810
				end

				_FH_NV(v2794)
				local v2795 = { "Stealing", "steal", "stolen" }
				v2791 = "isStealing"
				v2795[4] = v2791
				v2795[5] = "IsSteal"
				v2795[6] = "issteal"
				local v2796 = v2789

				local function v2797(...)
					for _, v2811 in ipairs(v2795) do
						local v2812 = v2811

						local function v2813(...)
							return v2796:GetAttribute(nil)
						end

						local v2814, v2815
						v2815, v2814 = pcall(_FH_NV(v2813))
						if v2815 and v2814 ~= nil and not (v2814 == false or v2814 == 0) then
							return true
						end
					end
					return false
				end

				local v2798 = v2789

				local function v2799(...)
					local v2816, v2817
					local v2818 = v2790()
					if v2818 then
						return
					end
					if v2818() then
						return
					end
					local Character20 = v2798.Character
					if v2816 then
						v2816 = Character20:FindFirstChildOfClass("Humanoid")
						v2817 = Character20
					end
					local Backpack4 = v2817:FindFirstChild("Backpack")
					if not (Character20 and v2816 and Backpack4) then
						return
					end
					for _, _ in ipairs(nil) do
						local FindFirstChild11 = Backpack4:FindFirstChild(nil)
						if not FindFirstChild11 then
							FindFirstChild11 = Character20:FindFirstChild(nil)
						end
						if FindFirstChild11 and FindFirstChild11:IsA("Tool") then
							break
						end
					end
					if not nil then
						return
					end
					local v2819 = nil
					if v532 then
						v2819 = nil
						if v532.suspend then
							v532.suspend(1)
							v2819 = nil
						end
					end
					local v2820 = v2816

					local function v2821(...)
						string.len("|W@")
						local Parent6 = v2819.Parent
						if Parent6 ~= nil then
							Parent6(nil, v2819)
						end
						v2819:Activate()

						local function v2822(...)
							if v2819 and v2819.Parent == nil and nil then
								local function v2823()
								end
								pcall(_FH_NV(v2823))
							end
						end

						task.delay(0.25, v2822)
					end

					pcall(v2821)
				end

				local v2800 = {}
				v2791 = _FH_NV

				local function v2801()
					while true do
						local v2824 = false
						if v2824 then
							v2824 = 316
						end
						if not v2824 then
							v2824 = string.byte("\189\242", 1, 1)
						end
					end
				end

				v2791 = v2791(v2801)
				v2791 = nil

				local function v2802(...)
					local v2825
					v2825 = not not false
					return v2825
				end

				v2791 = _FH_NV(v2802)
				local v2803 = v2789

				local function v2804(...)
					if not (nil == v2803 and v2780.enabled and v2791(nil)) then
						return
					end
					if v2790() then
						return
					end
					local _ = -2503990737 + bit32.lshift(
						408 + string.byte("\189\237\235[F", 1, nil),
						22
					) + -8748
					if v2797() then
						return
					end
					local v2826 = (nil).HoldDuration
					if v2826 then
						v2826 = 0 < (nil).HoldDuration
					end
					v2826 = v2826 and (nil).HoldDuration or 1
					local v2827 = nil
					local v2828 = {}

					local function v2829(...)
						local v2830 = v2800[nil]
						if not v2780.enabled then
							return
						end
						if v2830 and v2827.Parent and v555() then
						end
					end

					task.delay(v2826 * 0.99, _FH_NV(v2829))
				end

				v2788.PromptButtonHoldBegan:Connect(v2804)
				local v2805 = v2789

				local function v2806()
					local v2831
					v2831 = 144 - string.unpack(">i8", "\0\0\0\0\0\0\1s") <= 28
					v2831 = v2831 and 12 or string.len(";")
				end

				v2788.PromptButtonHoldEnded:Connect(_FH_NV(v2806))
				local v2807 = v2789
				local function v2808()
				end
				v2788.PromptTriggered:Connect(_FH_NV(v2808))
			end

			pcall(v2785)
		end

		spawn11(v2782)
		return spawn11
	end

	local v557 = v556()
	_FH_yield()
	v548 = _FH_NV
	v549 = function()
	end
	v548 = v548(v549)
	v548 = false
	v549 = false
	local v558 = v49
	local v559 = v178
	local v560 = v261
	local v561 = v147
	local v562 = v171
	local v563 = v50
	local v564 = v84
	local v565 = v489
	local v566 = v63
	local v567 = v123
	local v568 = v152
	local v569 = v61
	local v570 = v420
	local v571 = v440
	local v572 = v428
	local v573 = v127
	local v574 = v150
	local v575 = v86
	local v576 = v198
	local v577 = v386
	local v578 = v338
	local v579 = v465
	local v580 = v344
	local v581 = v350
	local v582 = v451
	local v583 = v469
	local v584 = v482
	local v585 = v484
	local v586 = v486
	local v587 = v474
	local v588 = v125
	local v589 = v478
	local v590 = v460
	local v591 = v124
	local v592 = v513
	local v593 = v509
	local v594 = v126
	local v595 = v128
	local v596 = Frame
	local v597 = v248
	local v598 = v251
	local v599 = v247
	local v600 = v250
	local v601 = v172
	local v602 = v175
	local v603 = v407
	local v604 = v327
	local v605 = v206

	local function v606(...)
		local v2832 = nil

		local function v2833(...)
			local v3188, v3189
			if not cloneref then
				v3188 = function()
					bit32.rrotate(39, 28)
				end

				_FH_NV(v3188)
			end
			local game28 = game
			local GetService20 = game28.GetService
			local v3190 = v3188(GetService20(game28, "Players"))
			local game29 = game
			local GetService21 = game29.GetService
			GetService20(GetService21(game29, "ReplicatedStorage"))
			local v3191 = GetService21(game:GetService("Workspace"))
			local LocalPlayer39 = v3190.LocalPlayer
			local function v3192()
			end
			_FH_NV(v3192)

			local function v3193()
				local _ = 6636 + bit32.bxor(bit32.bxor(329), 337) + -6659
				local AdminPanel = LocalPlayer39.PlayerGui:FindFirstChild("AdminPanel")
				if not AdminPanel then
					return nil, nil
				end
				local AdminPanel2 = AdminPanel:FindFirstChild("AdminPanel")
				if not AdminPanel2 then
					return nil, nil
				end
				local Content = AdminPanel2:FindFirstChild("Content")
				local Profiles = AdminPanel2:FindFirstChild("Profiles")
				if Content then
					while Profiles do
						Content:FindFirstChild("ScrollingFrame")
						Profiles:FindFirstChild("ScrollingFrame")
					end
				end
				return nil, nil
			end

			local v3194 = _FH_NV(v3193)
			local v3195 = {
				balloon = 0,
				ragdoll = 0,
				rocket = 0,
				inverse = 0,
				tiny = 0,
				jail = 0,
				jumpscare = 0,
				morph = 0
			}
			local v3196 = _G._FH_CmdCooldowns
			local v3197 = nil
			local v3198 = v3194
			local v3199, v3200, v3201, v3202, v3203, v3204, v3205, v3206
			local v3207, v3208
			if not v3196 then
				v3196 = {}
				v3197 = nil
				v3198 = v3194
				v3199 = nil
				v3200 = nil
				v3201 = nil
				v3202 = nil
				v3203 = nil
				v3204 = nil
				v3205 = nil
				v3206 = nil
				v3207 = nil
				v3208 = nil
			end
			v3199 = nil

			v3200 = function(...)
				ipairs(nil)
				return (nil)()
			end

			v3199 = _FH_NV(v3200)

			local function v3209(...)
				local v3234 = _G._FH_ResolveAdminRemote()
				if not v3234 then
					v3197("no admin remote resolved")
					return false
				end
				tick()
				local v3235, v3236, v3237
				v3237, v3236, v3235 = ipairs(nil)
				local v3238 = v3236
				while true do
					local _
					v3235, _ = v3237(v3236, v3235)
					if v3235 == nil then
						break
					else
						local v3239 = nil
						local _FH_AdminLastFired = _G._FH_AdminLastFired

						local function v3240()
							local function v3241()
								string.byte("6\242\166", 3, 3)
							end

							pcall(_FH_NV(v3241))
						end

						task.spawn(v3240)
						v3238 = v3235
					end
				end
				v3199(v3238)
				return true
			end

			v3200 = nil
			v3201 = _FH_NV
			local v3210 = v3196

			v3202 = function(...)
				local v3242 = nil
				local _G15 = _G
				local _FH_IsOnCooldown = _G15._FH_IsOnCooldown
				if _G15 then
					return not _G._FH_IsOnCooldown(nil)
				end
				local v3243 = tick()
				local v3244 = v3195[_FH_IsOnCooldown]
				if not v3244 then
					v3244 = 0
				end
				if v3243 - v3244 < 0.001 then
					return false
				end
				local v3245 = v3198()
				if v3244 then
					v3244 = v3245:FindFirstChild(nil)
					v3242 = v3245
				end
				if v3242 then
					v3242 = v3244:FindFirstChild("Timer")
				end
				if v3242 then
					return not v3242.Visible
				end
				local v3246 = tick()
				local v3247 = v3195[_FH_IsOnCooldown]
				if not v3247 then
					v3247 = 0
				end
				local v3248 = v3210[_FH_IsOnCooldown]
				if not v3248 then
					v3248 = 0.05
				end
				local v3249
				v3249 = v3248 <= v3246 - v3247
				return v3249
			end

			v3201 = v3201(v3202)
			v3200 = v3201
			v3201 = 0
			v3202 = nil
			v3203 = _FH_NV

			v3204 = function()
				local v3250 = true
				v3250 = v3250 and 94 or 108
				if tick() - v3201 < 1.5 then
					return
				end
				if tick() and v551.fireLaserCape then
					v551.fireLaserCape(1)
				end
			end

			v3203 = v3203(v3204)
			v3202 = v3203
			v3203 = nil
			v3204 = _FH_NV

			v3205 = function()
				return false
			end

			v3204 = v3204(v3205)
			v3203 = v3204
			v3204 = nil
			v3205 = _FH_NV

			local function v3211(...)
				local v3251, v3252, v3253
				for _, _ in ipairs(nil) do
					v3252 = v3200(nil)
					local v3254 = 309
					if not v3254 then
						v3254 = 191
					end
					v3251[33] = 9468 + v3254 + -9696
					v3251 = nil
					v3253 = nil
				end
				if 0 < #{} then
					local v3255 = v3197
					local Sending = "Sending"
					local v3256 = table.concat(v3252, " ")
					v3255(Sending, v3256, v3253.Name)
					v3255(Sending, v3256)
				end
			end

			v3205 = v3205(v3211)
			v3204 = v3205
			v3205 = 0
			v3206 = _FH_NV

			local function v3212(...)
				if tick() - v3205 < 1 then
					return
				end
				if not _G.__GH_DefCmds1 then
					table.create(1)[1] = "balloon"
				end
				local v3257 = _G.__GH_DefCmds2
				if not v3257 then
					v3257 = { "ragdoll" }
				end
				if v3203(nil) then
					v3204(nil, nil)
				elseif v3203(v3257) then
					v3204(v3257, v3257)
				else
					v3197("Laser Cape one shot", nil)
					v3202()
				end
			end

			v3206 = v3206(v3212)
			local v3213 = v3206
			v3206 = _G
			v3206.__GH_DefenseExecute = v3209
			v3206 = _G
			v3206.__GH_DefenseFire = v3213
			v3206 = _G
			v3206.__GH_FireLaserOnce = v3202
			v3206 = nil

			local function v3214()
				for _, v3258 in ipairs(v3191.Plots:GetChildren()) do
					local PlotSign4 = v3258:FindFirstChild("PlotSign")
					if PlotSign4 and PlotSign4:FindFirstChild("YourBase") then
						local Enabled = PlotSign4.YourBase.Enabled
						if Enabled then
							return Enabled
						end
					end
				end
			end

			v3206 = _FH_NV(v3214)

			local function v3215(...)
				local v3259, v3260, v3261, v3262
				local v3263 = v3206()
				if not v3263 then
					return {}
				end
				local v3264 = {}
				local v3265, v3266, v3267
				v3267, v3266, v3265 = ipairs((nil).GetPlayers(nil))
				local v3268 = v3266
				while true do
					local v3269
					v3265, v3269 = v3267(v3266, v3265)
					if v3265 == nil then
						break
					elseif v3269 == v3259 then
						v3268 = v3265
					else
						v3259 = v3269.Character
						if v3260 then
							v3262 = "HumanoidRootPart"
							v3260 = v3259:FindFirstChild(v3262)
							v3261 = v3259
						end
						if v3261 then
							v3261 = v3259:FindFirstChild("Humanoid")
							v3262 = v3259
						end
						if v3260 and v3261 then
							v3262 = v3261.Health
							if 0 < v3262 then
								v3262 = math.huge
								local v3270, v3271, v3272
								v3272, v3271, v3270 = ipairs(v3263:GetChildren())
								local v3273 = v3271
								while true do
									local _continue42 = false
									local v3274
									v3270, v3274 = v3272(v3271, v3270)
									if v3270 == nil then
										break
									elseif v3274:IsA("Model") then
										local v3275 = v3274.PrimaryPart
										if not v3275 then
											v3275 = v3274:FindFirstChild("HumanoidRootPart")
										end
										if v3275 then
											local Magnitude2 = (v3260.Position - v3275.Position).Magnitude
											if Magnitude2 < v3262 then
												v3262 = Magnitude2
											else
												v3273 = v3270
												_continue42 = true
											end
										end
										if _continue42 then
											continue
										end
										v3273 = v3270
									elseif v3274:IsA("BasePart") then
										local Magnitude3 = (v3260.Position - v3274.Position).Magnitude
										if Magnitude3 < v3262 then
											v3273 = v3270
											v3262 = Magnitude3
										else
											v3273 = v3270
										end
									else
										v3273 = v3270
									end
								end
								if v3262 <= 12 then
									local insert29 = table.insert
									local v3276 = { plr = v3269, dist = v3262 }
									insert29(v3273, v3276)
									v3268 = v3265
								else
									v3268 = v3265
								end
							else
								v3268 = v3265
							end
						else
							v3268 = v3265
						end
					end
				end

				local function v3277(...)
					local v3280
					v3280 = nil < nil
					return v3280
				end

				table.sort(v3268, _FH_NV(v3277))
				local v3278 = math.min(2, #v3264)
				local v3279 = 0
				while true do
					v3279 = v3279 + 1
					if v3279 <= v3278 then
						table.insert(v3262, v3264[v3279].plr)
					else
						break
					end
				end
				return v3279
			end

			local v3216 = table.create(2)
			v3207 = "isStealing"
			v3216[1] = v3207
			v3216[2] = "Stealing"
			v3207 = nil

			v3208 = function(...)
				local v3281, v3282
				for _, v3283 in ipairs(v3216) do
					local _ = -136298720 + (bit32.lrotate(65, 21) + string.len("\254\216\n")) + -16031
					v3281 = v3281(v3282, v3283)
					if v3281 == true then
						return true
					end
					if v3281 then
						v3282 = v3281:GetAttribute(v3283)
						if v3282 == true then
							return true
						end
					end
				end
				return false
			end

			v3207 = _FH_NV(v3208)
			v3208 = _FH_NV

			local function v3217(...)
				local v3284, v3285, v3286, v3287
				v3287, v3286, v3285 = ipairs(v3190:GetPlayers())
				while true do
					local v3288
					v3285, v3288 = v3287(v3286, v3285)
					if v3285 == nil then
						break
					elseif v3288 ~= v3284 then
						local Parent7 = v3288.Parent
						if Parent7 and Parent7(v3288) then
							v3284 = #{} + 1
						end
					end
				end
				return v3287
			end

			v3208 = v3208(v3217)
			local v3218 = v3208
			v3208 = false

			local function v3219(...)
				v60.replicatedStorage()
				local v3289, v3290, v3291
				v3291, v3290, v3289 = ipairs(nil)
				local v3292
				while true do
					local v3293
					v3289, v3293 = v3291(v3290, v3289)
					if v3289 == nil then
						break
					else
						v3292 = 235 < bit32.countrz((string.len("\145\253")))
						v3292 = v3292 and 302 or string.unpack("<i8", "4\1\0\0\0\0\0\0")
						if v3293:IsA("RemoteEvent") then
							local function v3294(...)
								bit32.rshift(304, 25)
								for _, v3295 in ipairs({}) do
									if type(v3295) == "string" then
										local lower11 = v3295:lower()
										if lower11:find("stealing") then
											v3197("Text trigger", v3295)
										end
										local match2 = lower11:match("successfully executed \"(%a+)\"")
										if match2 and v3195[match2] ~= nil then
											tick()
										end
									end
								end
							end

							v3293.OnClientEvent:Connect(_FH_NV(v3294))
						end
						if v3289 % 200 == 0 then
							task.wait()
						end
					end
				end
			end

			task.spawn(v3219)
			local v3220, v3221, v3222
			v3222, v3221, v3220 = ipairs(v48(v3191))
			local v3223 = v3220
			local v3224, v3225, v3226, v3227
			while true do
				local v3228
				v3223, v3228 = v3222(v3221, v3223)
				v3227 = v3213
				v3226 = v3218
				v3225 = v3220
				v3224 = v3189
				if v3223 == nil then
					break
				else
					v3189 = v3228:IsA("Sound")
					if v3189 then
						v3189 = v3228.Name:lower():find("warn", 1, true)
						if v3189 then
							v3189 = v3228.Destroy
							v3189(v3228)
							v3220 = v3228
						else
							v3220 = v3228
						end
					else
						v3220 = v3228
					end
				end
			end

			local function v3229(...)
				local v3296 = nil
				local function v3297()
				end
				pcall(_FH_NV(v3297))
			end

			local DescendantAdded = v3191.DescendantAdded
			v3225 = DescendantAdded

			v3224 = function(...)
				local Sound = (nil).IsA(nil, "Sound")
				if not Sound then
					return
				end
				if not (nil).IsDescendantOf(nil, nil) then
					return
				end
				local SoundId = (nil).SoundId

				local function v3298()
					local _ = -2147471249 + (bit32.lshift(math.modf(3.141592653589793), 31) - 161) + -12237
				end

				task.spawn(_FH_NV(v3298))
				if v548 or v549 then
					(nil).Destroy(nil)
					v3197("Sound trigger", (nil).Name)
				end
			end

			DescendantAdded.Connect(v3225, v3224)
			local spawn13 = task.spawn
			v3225 = _FH_NV

			v3224 = function(...)
				local v3299, v3300, v3301
				while task.wait(0) do
					if v549 then
						local v3302 = v3206()
						if v3302 then
							local v3303, v3304, v3305
							v3305, v3304, v3303 = ipairs(v3299:GetPlayers())
							v3299 = v3304
							while true do
								local v3306
								v3303, v3306 = v3305(v3304, v3303)
								if v3303 == nil then
									break
								elseif v3306 == v3300 or v3306.Parent ~= v3301 or not v3306.Character then
									v3299 = v3303
								else
									v3301 = "HumanoidRootPart"
									v3300 = v3306.Character:FindFirstChild(v3301)
									if v3300 and v3207(v3306) then
										local v3307, v3308
										v3308, v3307, v3301 = ipairs(v3302:GetChildren())
										local v3309 = v3307
										local _leave44 = false
										while true do
											local v3310
											v3301, v3310 = v3308(v3307, v3301)
											if v3301 == nil then
												break
											elseif v3310:IsA("Model") then
												local v3311 = v3310.PrimaryPart
												if not v3311 then
													v3311 = v3310:FindFirstChild("HumanoidRootPart")
												end
												if v3311 and
													(v3300.Position - v3311.Position).Magnitude < 9 then
													v3197(
														"Distance trigger",
														v3306.Name,
														"near",
														v3310.Name
													)
													_leave44 = true
													break
												end
												v3309 = v3301
											else
												v3309 = v3301
											end
										end
										if not _leave44 then
											v3301 = v3309
										end
										v3299 = v3303
									else
										v3299 = v3303
									end
								end
							end
						end
					end
				end
			end

			spawn13(v3225(v3224))
			v3225 = nil
			v3224 = _FH_NV
			local v3230 = {}

			local function v3231(...)
				local v3312 = nil
				local v3313 = false
				v3313 = v3313 and 10 or 356
				string.unpack(">i8", "\0\0\0\0\0\0\1U")
				local v3314 = tick()
				if not v3312 then
					v3312 = 0
				end
				if v3314 - v3312 < 1 then
					return
				end
				local balloon = "balloon"
				if v3200(balloon) then
					table.insert(balloon, "balloon")
				end
				local ragdoll2 = "ragdoll"
				if v3200(ragdoll2) then
					table.insert(ragdoll2, "ragdoll")
				end
				if 0 < #{} then
					local v3315 = v3197
					local v3316 = "Anti Intruder punish"
					local v3317 = table.concat(nil, " ")
					v3315(v3316, v3317, nil)
					v3315(v3316, v3317)
				end
			end

			v3224 = v3224(v3231)
			v3225 = v3224
			v3224 = task
			v3224 = v3224.spawn

			local function v3232(...)
				local v3318, v3319, v3320
				while task.wait(0) do
					if v549 then
						local v3321 = v3206()
						if v3321 then
							local v3322, v3323, v3324
							v3324, v3323, v3322 = ipairs(v3318:GetPlayers())
							v3318 = v3323
							while true do
								local v3325
								v3322, v3325 = v3324(v3323, v3322)
								if v3322 == nil then
									break
								elseif v3325 == v3319 or v3325.Parent ~= v3320 or not v3325.Character then
									v3318 = v3322
								else
									v3319 = v3325.Character:FindFirstChild("HumanoidRootPart")
									v3320 = v3325.Character
									local Humanoid10 = v3320:FindFirstChild("Humanoid")
									if v3319 and Humanoid10 then
										v3320 = Humanoid10.Health
										if 0 < v3320 then
											local v3326, v3327
											v3320, v3327, v3326 = ipairs(v3321:GetChildren())
											while true do
												local v3328
												v3326, v3328 = v3320(v3327, v3326)
												if v3326 == nil then
													break
												elseif v3328:IsA("Model") then
													local v3329 = v3328.PrimaryPart
													if not v3329 then
														v3329 = v3328:FindFirstChild("HumanoidRootPart")
													end
													if v3329 and
														(v3319.Position - v3329.Position).Magnitude < 9 then
														v3225(v3325)
														break
													end
												end
											end
											v3318 = v3322
										else
											v3318 = v3322
										end
									else
										v3318 = v3322
									end
								end
							end
						end
					end
				end
			end

			v3224(_FH_NV(v3232))
			v3224 = 0

			local function v3233()
				local v3330
				while task.wait(0) do
					if (v548 or v549) and v3208 then
						v3330 = 394 < 221 - string.unpack(">i8", "\0\0\0\0\0\0\0\167")
						v3330 = v3330 and string.unpack(">i8", "\0\0\0\0\0\0\1r") or
							math.modf(3.141592653589793)
						if 0.04 < tick - v3224 then
							local v3331 = v3226()
							local v3332 = #v3331
							if v3332 == 0 then
								v3332()
							end
							if 0 < #v3331 then
								v3197("Execute on", #v3331, "target(s)")
								v3227(v3331[1])
								if v3331[2] then
									v3227(v3331[2])
								end
								tick()
							end
						end
					end
				end
			end

			task.spawn(_FH_NV(v3233))
		end

		task.spawn(v2833)
		if not cloneref then
			v2833 = function()
				local v3333
				while true do
					v3333 = string.len("S") - 377 <= 225
					if v3333 then
						v3333 = 423
					end
					if not v3333 then
						v3333 = 470
					end
				end
			end

			_FH_NV(v2833)
		end
		local v2834 = v2833(game:GetService("Workspace"))
		local v2835 = { "Meteor", "Explosion" }
		local Piles = "Piles"
		v2835[3] = Piles
		v2835[4] = "SnowWeather"
		v2835[5] = "RainWeather"
		v2835[6] = "Pinata"
		v2835[7] = "Wall"
		v2835[8] = "Web_Main"
		v2835[9] = "Sammy"
		v2835[10] = "Stage"
		v2835[11] = "Stock"
		v2835[12] = "Tree"
		v2835[13] = "Hole"
		v2835[14] = "FireGoblets"
		v2835[15] = "Events"
		v2835[16] = "StarfallWeather"
		v2835[17] = "1x1x1x1Map"
		v2835[18] = "CandyWeather"
		v2835[19] = "NyanCat"
		v2835[20] = "TacoAmbient"
		v2835[21] = "GatitoMap"
		v2835[22] = "MapVFX"
		v2835[23] = "Nyan"
		v2835[24] = "Ocean"
		v2835[25] = "Strike"
		v2835[26] = "ProximityPart"
		v2835[27] = "Planesbg"
		v2835[28] = "Taco"
		v2835[29] = "Glitch"
		v2835[30] = "Crabs"
		v2835[31] = "Cannon"
		v2835[32] = "YinYangMap"
		v2835[33] = "YinYangWeather"
		v2835[34] = "BabyTungTung"
		v2835[35] = "GalaxyMap"
		v2835[36] = "GalaxyWeather"
		v2835[37] = "VFX"
		v2835[38] = "Caves"
		v2835[39] = "Caves2"
		v2835[40] = "SammyBase"
		v2835[41] = "UFO"
		v2835[42] = "ExplosionBoom"
		v2835[43] = "ufoemit"
		v2835[44] = "CursedSpinWheels"
		for _, _ in ipairs(Piles) do
		end

		local function v2836(...)
			local v3334 = nil
			while v3334 and v3334 ~= v2834 do
				if v3334.Name == "Plots" and v3334.Parent == v2834 then
					return true
				end
				v3334 = v3334.Parent
			end
			return false
		end

		_FH_NV(v2836)
		local v2837
		v2837 = _G.__GH_AntiAdminEffects == nil
		if v2837 then
			v2837 = true
		end
		local v2838 = nil
		if not v2837 then
			v2838 = nil
		end
		local v2839 = {}

		local function v2840(...)
			if _G._FH_SHUTDOWN then
				return
			end
			if not _G.__GH_AntiAdminEffects then
				return
			end
			if v2839[(nil).Name] and not v2838(nil) then
				local v3335 = nil

				local function v3336()
					v3335:Destroy()
				end

				pcall(_FH_NV(v3336))
			end
		end

		v2834.DescendantAdded:Connect(v2840)
		_FH_yield()

		local function v2841()
			local v3337 = {}

			local function v3338(...)
				local v3346 = nil
				v3346 = v3346 and true or false
				v3337.fast = v3346
			end

			_FH_NV(v3338)

			local function v3339(...)
				local v3347 = nil
				v3347 = v3347 and true or false
				v3337.nearest = v3347
			end

			_FH_NV(v3339)

			local function v3340(...)
				local v3348 = nil
				local bor = bit32.bor
				local v3349 = false
				v3349 = v3349 and 36 or 425
				bor(v3349)
				v3348 = v3348 and true or false
				v3337.best = v3348
			end

			_FH_NV(v3340)

			local function v3341(...)
				local v3350 = nil
				v3350 = v3350 and true or false
				v3337.priorityGrab = v3350
			end

			_FH_NV(v3341)

			local function v3342()
				string.byte("\28\4M4", 1, nil)
				return v3337.priority
			end

			_FH_NV(v3342)

			local function v3343()
				local v3351
				v3351 = v3337.priority == true
				return v3351
			end

			_FH_NV(v3343)

			local function v3344()
				local v3352
				v3352 = not (next(v3337.priority) == nil)
				return v3352
			end

			_FH_NV(v3344)

			local function v3345()
				local v3353
				v3353 = not not false
				v3353 = v3353 and string.unpack("<i8", "<\1\0\0\0\0\0\0") or 393
			end

			task.spawn(v3345)
			math.modf(3.141592653589793)
			return _G
		end

		local v2842 = v2841()
		local Frame31 = Instance.new("Frame")
		v2838 = 210
		UDim2.new(0, v2838, 0, 44)
		v2838 = -105
		UDim2.new(0.5, v2838, 0.5, -22)
		v87(0.5)
		v2838 = "Bg"
		v65(0.5, v2838)
		v2838 = nil
		local v2843 = v560.get("panelpos:AutoGrabBar", v2838)
		local v2844 = v2843
		if type(v2838) == "table" then
			v2838 = #v2843
			v2844 = v2843
			if v2838 == 4 then
				local new28 = UDim2.new
				v2838 = v2843[1]
				new28(v2838, v2843[2], v2843[3], v2843[4])
				v2844 = v2843
			end
		end
		v2844 = v547
		v2838 = _FH_NV

		local function v2845(...)
			Frame31.Position = nil
		end

		v2844("panelpos:AutoGrabBar", v2838(v2845))
		v2844 = nil

		v2838 = function()
			local AbsoluteSize9 = v559.AbsoluteSize
			if AbsoluteSize9.X < 1 or AbsoluteSize9.Y < 1 then
				return
			end
			local AbsolutePosition4 = Frame31.AbsolutePosition
			local AbsoluteSize10 = Frame31.AbsoluteSize
			local v3596 = math.clamp(
				AbsolutePosition4.X,
				0,
				math.max(0, AbsoluteSize9.X - AbsoluteSize10.X)
			)
			local clamp11 = math.clamp
			local v3597 = AbsolutePosition4.Y
			local max7 = math.max
			local v3598 = AbsoluteSize9.Y - AbsoluteSize10.Y
			if 0.5 < math.abs(v3596 - AbsolutePosition4.X) or
				0.5 < math.abs(clamp11(v3597, 0, max7(0, v3598)) - AbsolutePosition4.Y) then
				UDim2.new(0, v3596, 0, v3598)
			end
		end

		v2844 = _FH_NV(v2838)
		v2838 = Frame31
		local Visible = Frame31.GetPropertyChangedSignal(v2838, "Visible")
		v2838 = Visible

		local function v2846()
			if Frame31.Visible then
				task.defer(v2844)
			end
		end

		Visible.Connect(v2838, _FH_NV(v2846))
		v561(v2838, 14)
		v69(v2838, 2, 0, 135)
		v2838 = "ImageLabel"
		Instance.new(v2838)
		v2838 = UDim2
		v2838 = v2838.new
		v2838 = v2838(1, 30, 1, 30)
		v2838 = UDim2
		v2838 = v2838.new
		v2838 = v2838(0, -15, 0, -15)
		v2838 = Color3
		v2838 = v2838.fromRGB
		v2838 = v2838(0, 0, 0)
		v2838 = Enum
		v2838 = v2838.ScaleType
		v2838 = v2838.Slice
		v2838 = Rect
		v2838 = v2838.new
		v2838 = v2838(24, 24, 276, 276)
		v2838 = Instance
		v2838 = v2838.new
		v2838 = v2838("Frame")
		UDim2.new(0, 6, 0, 6)
		UDim2.new(0, 12, 0, 11)
		v561(0, 3)
		v545(0, nil, nil, 0)
		local v2847 = v562(0, "AUTO GRAB", 11, v558.Text, Enum.Font.GothamBold)
		UDim2.new(1, -100, 0, 14)
		UDim2.new(0, 24, 0, 7)
		local v2848 = v562(
			0,
			"0%",
			11,
			v558.TextDim,
			Enum.Font.GothamBold,
			Enum.TextXAlignment.Right
		)
		UDim2.new(0, 80, 0, 14)
		UDim2.new(1, -92, 0, 7)
		local Frame32 = Instance.new("Frame")
		UDim2.new(1, -24, 0, 13)
		UDim2.new(0, 12, 1, -19)
		v65(0, "Soft")
		v561(0, 6)
		local Frame33 = Instance.new("Frame")
		Frame33.Size = UDim2.new(0, 0, 1, 0)
		Frame33.BackgroundColor3 = v558.White
		Frame33.BorderSizePixel = 0
		Frame33.ZIndex = 62
		Frame33.Parent = Frame32
		v561(Frame33, 6)
		v545(Frame33, nil, nil, 0)
		local White = v558.White
		local v2849 = v562(
			Frame33,
			"0%",
			9,
			White,
			Enum.Font.GothamBold,
			Enum.TextXAlignment.Center
		)
		UDim2.new(1, -24, White, 13)
		UDim2.new(0, 12, 1, -19)
		Color3.fromRGB(0, 0, 0)
		local grabbar_locked = v560.get("grabbar_locked", true)
		local TextButton11 = Instance.new("TextButton")
		TextButton11.Name = "BarLockBtn"
		TextButton11.Size = UDim2.new(0, 16, 0, 16)
		local v2850 = 1
		local v2851 = -20
		local v2852 = 0
		TextButton11.Position = UDim2.new(v2850, v2851, v2852, 4)
		local v2853 = v558.BgDeep
		TextButton11.BackgroundColor3 = v2853
		TextButton11.BorderSizePixel = 0
		v2853 = v2853 and "🔒" or "🔓"
		TextButton11.Text = v2853
		local v2854 = Enum.Font.GothamBold
		TextButton11.Font = v2854
		TextButton11.TextSize = 10
		if v2854 then
			v2850 = 255
			v2851 = 200
			v2852 = 60
			v2854 = Color3.fromRGB(v2850, v2851, v2852)
		end
		local v2855 = grabbar_locked
		local v2856 = v2854
		local v2857 = v2850
		local v2858 = v2851
		local v2859 = v2852
		if not v2854 then
			v2855 = grabbar_locked
			v2856 = v558.TextMute
			v2857 = v2850
			v2858 = v2851
			v2859 = v2852
		end
		TextButton11.TextColor3 = v2856
		TextButton11.AutoButtonColor = false
		TextButton11.ZIndex = 63
		TextButton11.Parent = Frame31
		v2856 = v561
		v2857 = TextButton11
		v2858 = 4
		v2856(v2857, v2858)
		v2856 = TextButton11.Activated
		v2857 = v2856
		v2856 = v2856.Connect
		v2858 = _FH_NV

		v2859 = function()
			local bnot2 = bit32.bnot
			local v3599
			v3599 = not false
			v3599 = v3599 and 204 or 1
			bnot2(v3599)
			local v3600 = v2855
			if v3600 then
				v3600 = "🔒"
			end
			local v3601 = v2855
			if v3601 then
				v3601 = Color3.fromRGB(255, 200, 60)
			end
			v560.set("grabbar_locked", v2855)
		end

		v2856(v2857, v2858(v2859))
		v2856 = TextButton11.MouseEnter
		v2857 = v2856
		v2856 = v2856.Connect
		v2858 = _FH_NV

		v2859 = function()
			({}).BackgroundColor3 = v558.CardHover
		end

		v2856(v2857, v2858(v2859))
		v2856 = TextButton11.MouseLeave
		v2857 = v2856
		v2856 = v2856.Connect
		v2858 = _FH_NV

		v2859 = function(...)
			(nil)[44] = 9689 + (nil - string.byte("\154\2051", 1, nil)) + -9500
			;({}).BackgroundColor3 = v558.BgDeep
			up4[nil] = v68
		end

		v2856(v2857, v2858(v2859))
		v2856 = nil
		v2857 = nil
		v2858 = nil
		v2859 = nil

		local function v2860(...)
			local v3602
			v3602 = string.byte("^", 1, 1) == 497
			v3602 = v3602 and 39 or 232
			if not v93 then
				local v3603 = v2855
				if not v3603 then
					if v3603 == Enum.UserInputType.MouseButton1 or
						nil == Enum.UserInputType.Touch then
					end
					return
				end
			end
		end

		Frame31.InputBegan:Connect(_FH_NV(v2860))

		local function v2861(...)
			if (nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch) and v2856 then
				local Position4 = Frame31.Position
				local set7 = v560.set
				local v3604 = table.create(4)
				local Scale4 = Position4.X.Scale
				local Offset4 = Position4.X.Offset
				local Scale5 = Position4.Y.Scale
				local Offset5 = Position4.Y.Offset
				v3604[1] = Scale4
				v3604[2] = Offset4
				v3604[3] = Scale5
				v3604[4] = Offset5
				set7("panelpos:AutoGrabBar", v3604)
			end
		end

		Frame31.InputEnded:Connect(_FH_NV(v2861))

		local function v2862(...)
			if v2856 and
				((nil).UserInputType == Enum.UserInputType.MouseMovement or
					(nil).UserInputType == Enum.UserInputType.Touch) then
				local v3605 = (nil).Position - v2857
				if not v2859 then
					if v3605.Magnitude < 8 then
						return
					end
					return
				end
				local AbsoluteSize11 = v559.AbsoluteSize
				local AbsoluteSize12 = Frame31.AbsoluteSize
				math.clamp(nil, 0, math.max(0, AbsoluteSize11.X - AbsoluteSize12.X))
				local clamp12 = math.clamp
				local max8 = math.max
				local v3606 = AbsoluteSize11.Y - AbsoluteSize12.Y
				clamp12(0, 0, max8(0, v3606))
				Frame31.Position = UDim2.new(0, max8, 0, v3606)
			end
		end

		UserInputService.InputChanged:Connect(_FH_NV(v2862))
		v2856 = nil
		v2857 = _FH_NV

		v2858 = function(...)
			local v3607 = nil
			if tonumber(nil) then
			end
			local v3608 = { "", "K", "M" }
			local v3609 = "B"
			v3608[4] = v3609
			v3608[5] = "T"
			v3608[6] = "Qa"
			v3608[7] = "Qi"
			local v3610 = 1
			while 1000 <= v3607 and v3610 < #v3608 do
				v3607 = v3607 / 1000
				v3610 = v3610 + 1
			end
			local format2 = string.format
			local v3611
			v3611 = v3610 == 1
			v3611 = v3611 and "$%d%s/s" or "$%.1f%s/s"
			return format2(v3611, v3609, v3608[v3610])
		end

		v2857 = v2857(v2858)
		v2856 = v2857
		v2857 = 0
		v2858 = 0
		v2859 = nil

		local function v2863(...)
			local v3612 = nil
			if _FH_GAMMA_GEN ~= _G._FH_GAMMA_GEN then
				v2859:Disconnect()
				return
			end
			local v3613 = v2842.nearest
			if not v3613 then
				v3613 = v2842.best
			end
			if not v3613 then
				v3613 = v2842.priorityGrab
			end
			if Frame31.Visible == v3613 then
			end
			if not v3613 then
				return
			end
			local v3614 = v2842.waitUntil
			if not v3614 then
				v3614 = 0
			end
			if v3614 <= tick() then
				local clamp13 = math.clamp
				local v3615 = v2842.progress
				if not v3615 then
					v3615 = 0
				end
				v3612 = v2857 + (clamp13(v3615, 0, 1) - v2857) * math.clamp(nil * 14, 0, 1)
			end
			local v3616 = v2858
			v3612 = v3612 and 0.06666666666666667 or 0.03333333333333333
			if v3616 < v3612 then
				return
			end
			if tick() < v3614 then
				local v3617 = math.max(0, v3614 - tick())
				UDim2.new(1, 0, 1, 0)
				if v2842.targetName then
				end
				v2848.Text = string.format("%.1fs", v3617)
				v2848.TextColor3 = v558.Green
				v2848.TextSize = 22
				return
			end
			v2848.TextSize = 13
			UDim2.new(math.clamp(v2857, 0, 1), 0, 1, 0)
			string.format("%d%%", math.floor(math.clamp(v2857, 0, 1) * 100 + 0.5))
			if v2842.hasTarget then
				if v2842.targetName then
				end
				v2848.Text = v2856(v2842.targetGen)
				v2848.TextColor3 = v558.Text
			else
				v2848.Text = "searching..."
				v2848.TextColor3 = v558.TextMute
			end
		end

		local Connect10 = RunService.Heartbeat:Connect(_FH_NV(v2863))
		v2859 = Connect10
		v2844 = nil
		local LocalPlayer35 = GetService2.LocalPlayer

		v2838 = function()
			local v3618 = true
			v3618 = v3618 and 168 or 182
			string.unpack(">i8", "\0\0\0\0\0\0\0\195")
		end

		local v2864 = v2838
		local function v2865()
		end
		_FH_NV(v2865)
		if LocalPlayer35 then
			local Character21 = LocalPlayer35.Character
			if Character21 then
				Character21(LocalPlayer35.Character)
			end
		end
		local v2866 = LocalPlayer35
		if LocalPlayer35 then
			LocalPlayer35.CharacterAdded:Connect(Frame33)
			v2866 = LocalPlayer35
		end
		v2866 = nil

		v2844 = function(...)
			local v3619, v3620, v3621, v3622
			local v3623 = GetService2.LocalPlayer
			if v3623 then
				v3619 = v3623:GetAttribute("Stealing")
				if v3619 ~= nil then
					return
				end
			end
			if v3619 then
				v3619 = v3623.Character
			end
			local v3624
			if v3619 then
				v3620 = "HumanoidRootPart"
				v3624 = v3619:FindFirstChild(v3620)
			else
				v3624 = v3619
			end
			if not (v3624 and nil) then
				return
			end
			if typeof(v3620) == "Vector3" then
				CFrame.new(v3620)
			end
			local Magnitude4 = (v3624.Position - (nil).Position).Magnitude
			local max9 = math.max
			if not v3621 then
				v3621 = 214
			end
			if not v3621 then
				v3621 = 214
			end
			local v3625 = max9(0.05, Magnitude4 / v3621)
			local Backpack5 = v3623:FindFirstChildOfClass("Backpack")
			v3623 = v3623 and Backpack5:FindFirstChild(v516) or v3619:FindFirstChild(v516)
			local Humanoid11 = v3619:FindFirstChildOfClass("Humanoid")
			if v3619 and v532.suspend then
				local function v3626(...)
					v532.suspend(math.max(0.6, nil + 0.8))
				end

				pcall(_FH_NV(v3626))
			end
			local v3627 = os.clock()
			_G._FH_CARPET_TP_TOKEN = v3627
			_G._FH_CARPET_TP_ACTIVE = true
			if v3623 and Humanoid11 and v3623.Parent ~= v3619 then
				local v3628 = v3623

				v3622 = function()
					local _ = -1542864 + bit32.lrotate(
						string.len("\148") + string.unpack(">i8", "\0\0\0\0\0\0\0\190"),
						13
					) + -21805
				end

				pcall(_FH_NV(v3622))
			end
			if v2866 then
				v3622 = function()
					v2866:Cancel()
				end

				pcall(_FH_NV(v3622))
			end
			local Create18 = TweenService:Create(
				v3622,
				TweenInfo.new(nil, Enum.EasingStyle.Linear),
				{}
			)

			local function v3629()
				local rshift = bit32.rshift
				local v3631
				v3631 = string.byte("\177q", 1, nil) <= string.len("V\30\241b")
				v3631 = v3631 and 315 or 295
				rshift(v3631, 26)
			end

			Create18.Completed:Connect(_FH_NV(v3629))

			local function v3630(...)
				if _G._FH_CARPET_TP_TOKEN == nil then
				end
			end

			task.delay(v3625 + 1, _FH_NV(v3630))
			Create18:Play()
			return Create18
		end

		v2838 = nil

		local function v2867()
			bit32.rrotate(-96, 21)
		end

		local v2868, v2869
		v2869, v2868 = pcall(_FH_NV(v2867))
		local v2870 = nil
		local v2871 = Connect10
		local v2872 = v2863
		if v2869 then
			v2870 = nil
			v2871 = Connect10
			v2872 = v2863
			if v2868 then
				v2855 = function()
					local v3632
					v3632 = not not false
					v3632 = v3632 and string.byte("(\203iU\131", 4, nil) or 364
					return require(v2868:Clone())
				end

				local v2873, v2874
				v2874, v2873 = pcall(_FH_NV(v2855))
				v2870 = nil
				v2871 = Connect10
				v2872 = v2863
				if v2874 then
					v2870 = nil
					v2871 = Connect10
					v2872 = v2863
					if v2873 then
						v2855 = function(...)
							local v3633 = nil

							local function v3634(...)
								return v2873:RemoteEvent(nil)
							end

							local v3635, v3636
							v3636, v3635 = pcall(_FH_NV(v3634))
							if v3636 and v3635 then
								return v3634:FindFirstChild(tostring(nil))
							end
							return nil
						end

						v2856 = "3ba148c9-7ed6-4675-93f8-9f7c356a2c54"
						local v2875 = TextButton11(v2856)
						v2838 = v2875
						v2856 = "f40f7d9e-2f0d-4167-b250-899273f46874"
						local v2876 = v2875(v2856)
						v2856 = _G
						v2856 = v2856._FH_GetRemote
						v2856 = _G
						v2856 = v2856._FH_UseItemRemote
						if not v2856 then
							v2856 = _G
							v2856 = v2856._FH_ResolveUseItemRemote
							if v2856 then
								v2856 = _G
								v2856 = v2856._FH_ResolveUseItemRemote
								v2856 = v2856()
							end
						end
						if not v2856 then
							v2857 = "UseItem"
							v2856 = v2856(v2857)
						end
						if not v2856 then
							v2857 = "RE/UseItem"
							v2856 = v2856(v2857)
						end
						_FH_UseItemRemote = _G._FH_UseItemRemote
						v2870 = v2876
						v2871 = Connect10
						v2872 = v2863
					end
				end
			end
		end
		v2855 = nil

		v2856 = function(...)
			local v3637 = { plotName = nil }
			return v3637
		end

		v2855 = _FH_NV(v2856)

		local function v2877()
			local GetServerTimeNow = workspace:GetServerTimeNow()
			local v3638 = v2870
			if v3638 then
				string.byte("C\210\206y", 3, 3)

				local function v3639(...)
					v2870:FireServer(nil + 124, "68c86eb7-eb7e-4b4d-96ae-cf7cd847c5b0")
				end

				v3638(_FH_NV(v3639))

				local function v3640(...)
					v2870:FireServer(nil + 124, "07b9cc25-2a1f-4a26-a0ec-f2fab578d8bd")
				end

				pcall(_FH_NV(v3640))
			end
			tick()
			tick()
			return {}
		end

		v2856 = function(...)
			if nil then
				local v3641 = 359
				if not v3641 then
					v3641 = 74
				end
				;(nil)[57] = 31857 + v3641 + -31861
				if v2838 then
					local v3642 = tick() - (nil).startedAt
					if v3642 < 1.3 then
						task.wait(1.3 - v3642)
					end
					local v3643 = (nil).t0 + 1.3 + 31
					local v3644 = nil
					local function v3645()
					end
					pcall(_FH_NV(v3645))
					local v3646 = nil
					local function v3647()
					end
					pcall(_FH_NV(v3647))
					return true
				end
			end
			return false
		end

		v2859 = setmetatable
		v2871 = {}
		local v2878 = { __mode = "k" }
		v2859 = v2859(v2871, v2878)
		v2871 = nil
		local v2879 = v2859

		local function v2880(...)
			local v3648, v3649
			if type(getconnections) ~= "function" then
				return nil
			end
			local v3650 = {}
			local v3651, v3652
			v3652, v3651 = pcall(getconnections, nil)
			if v3652 then
				local v3653, v3654
				v3654, v3653, v3648 = ipairs(v3651)
				local v3655 = v3648
				while true do
					local v3656
					v3655, v3656 = v3654(v3653, v3655)
					if v3655 == nil then
						break
					else
						v3649 = type(v3656.Function)
						if v3649 == "function" then
							v3649 = table.insert
							v3649(v3650.hold, v3656.Function)
							v3648 = v3656
						else
							v3648 = v3656
						end
					end
				end
			end
			local _, v3657
			v3657, _ = pcall(getconnections, v3648)
			if v3657 then
				for _, v3658 in ipairs(v3649) do
					if type(v3658.Function) == "function" then
						table.insert(v3650.trigger, v3658.Function)
					end
				end
			end
			local v3659 = #v3650.hold
			if v3659 == 0 and #v3650.trigger == 0 then
				return nil
			end
			return v3659
		end

		v2871 = _FH_NV(v2880)
		local v2881 = {}

		v2872 = function(...)
			local _ = 30928 + (bit32.bxor(204, (string.len("\170\190"))) + 404) + -31538
			if not nil then
				return nil
			end
			local v3660 = v2871(nil)
			if not v3660 then
				return nil
			end
			for _, _ in ipairs(v3660.hold) do
			end
			tick()
			return {}
		end

		v2881.startStealHold = _FH_NV(v2872)

		v2872 = function()
			tick()
			task.wait(1.3)
		end

		v2881.doHoldAndWait = _FH_NV(v2872)

		v2872 = function()
			local v3661
			v3661 = string.unpack(">i8", "\0\0\0\0\0\0\1\130") + string.unpack(">i8", "\0\0\0\0\0\0\0\129") <= string.unpack(">i8", "\0\0\0\0\0\0\1\172")
			v3661 = v3661 and string.len("t") or 3
		end

		v2881.waitForStealTime = _FH_NV(v2872)

		v2872 = function()
			return false
		end

		v2881.finishStealHold = _FH_NV(v2872)
		_FH_yield()

		local function v2882(...)
			local v3662 = type
			local v3663 = cloneref
			local v3664
			v3664 = v3662(v3663) == "function"
			if v3664 then
				v3664 = cloneref
			end
			if not v3664 then
				v3663 = function(...)
					return nil
				end

				_FH_NV(v3663)
			end
			local game32 = game
			local GetService24 = game32.GetService
			local v3665 = v3663(GetService24(game32, "Players"))
			local game33 = game
			local GetService25 = game33.GetService
			local v3666 = GetService24(GetService25(game33, "RunService"))
			local v3667 = GetService25(game:GetService("Workspace"))
			local v3668 = v3665.LocalPlayer
			local v3669, v3670, v3671, v3672, v3673, v3674, v3675, v3676
			local v3677, v3678, v3679
			if not v3668 then
				v3668 = v3665.PlayerAdded:Wait()
				v3669 = nil
				v3670 = nil
				v3671 = nil
				v3672 = nil
				v3673 = nil
				v3674 = nil
				v3675 = nil
				v3676 = nil
				v3677 = nil
				v3678 = nil
				v3679 = nil
			end
			v3669 = "Plots"
			v3670 = 10
			local WaitForChild5 = v3667:WaitForChild(v3669, v3670)
			local v3680 = v3668

			local function v3681(...)
				local function v3701()
					local _ = 7261 + bit32.bor((bit32.bor((string.len("\197\193\191"))))) + -7262
					local v3702 = v3680
					return require(v3702:WaitForChild("PlayerScripts")(v3702, "PlayerModule")):GetControls()
				end

				pcall((nil)(v3701))
				if not v3701 then
					v3701 = nil
				end
				return v3701
			end

			v3669 = v3681
			v3669 = v3669()
			v3670 = v3668.CharacterAdded
			v3671 = v3670
			v3670 = v3670.Connect

			local function v3682()
				local function v3703(...)
					local _ = -4294939674 + bit32.bxor(-122, (string.len("\1951"))) + -27497
					local v3704 = v3681()
					if nil then
						local function v3705()
							v3704:Enable()
						end

						pcall(_FH_NV(v3705))
					elseif v3669 then
						local function v3706(...)
							string.byte("\179\147", 1, nil)
							v3669(nil)
						end

						pcall(_FH_NV(v3706))
					end
				end

				task.defer(v3703)
			end

			v3670(v3671, v3682)
			v3670 = false
			v3671 = 0

			local function v3683()
				local _ = 4886 + bit32.band(468 + math.modf(3.141592653589793), 4, 377) + -4816
				local v3707 = {}
				local v3708 = v2842
				if v3708 then
					v3708 = v2842.nearest
				end
				local v3709 = v2842
				if v3709 then
					v3709 = v2842.best
				end
				local v3710 = v2842
				if v3710 then
					v3710 = v2842.priorityGrab
				end
				local v3711 = v2842
				v3711 = v3711 and v2842.fast or false
				if v3711 then
					v3711 = v557.enabled
				end
				if v2842 then
					local function v3712()
						v2842.setNearest(false)
					end

					pcall(_FH_NV(v3712))

					local function v3713()
						v2842.setBest(false)
					end

					pcall(_FH_NV(v3713))

					local function v3714()
						v2842.setPriorityGrab(false)
					end

					pcall(_FH_NV(v3714))

					local function v3715()
						v2842.setFast(false)
					end

					pcall(_FH_NV(v3715))
				end
				local bigPotion = v3707.bigPotion
				local v3716 = bigPotion
				if bigPotion then
					v3716 = bigPotion
				end
				if bigPotion then
					local function v3717()
						v557.set(false)
					end

					pcall(_FH_NV(v3717))
					local clearSession = v557.clearSession
					v3716 = clearSession
					if clearSession then
						local pcall26 = pcall

						local function v3718()
							string.byte("\195\19%v", 4, 4)
							v557.clearSession()
						end

						pcall26(_FH_NV(v3718))
						v3716 = pcall26
					end
				end
				v3716 = false

				local function v3719()
					local v3720 = v3716
					if v3720 then
						return
					end
					if v3720 then
						if v3707.near then
							local function v3721()
								v2842.setNearest(true)
							end

							pcall(_FH_NV(v3721))
						end
						if v3707.best then
							local function v3722()
								while true do
								end
							end

							pcall(_FH_NV(v3722))
						end
						if v3707.pri then
							local function v3723()
								v2842.setPriorityGrab(true)
							end

							pcall(_FH_NV(v3723))
						end
						if v3707.fast then
							local function v3724(...)
								(nil)(true)
							end

							pcall(_FH_NV(v3724))
						end
					end
					local bigPotion2 = v3707.bigPotion
					if bigPotion2 and bigPotion2 then
						local function v3725()
						end
						pcall(_FH_NV(v3725))
					end
				end

				return v3719
			end

			v3672 = nil
			local v3684 = {}

			local function v3685(...)
				local v3726, v3727
				if not getconnections then
					return nil
				end
				local v3728 = {}
				local v3729, v3730
				v3730, v3729 = pcall(getconnections, nil)
				if v3730 and type(v3729) == "table" then
					local v3731, v3732
					v3732, v3731, v3726 = ipairs(v3729)
					local v3733 = v3726
					while true do
						local v3734
						v3733, v3734 = v3732(v3731, v3733)
						if v3733 == nil then
							break
						else
							v3727 = type(v3734.Function)
							if v3727 == "function" then
								v3727 = table.insert
								v3727(v3728.hold, v3734.Function)
								v3726 = v3734
							else
								v3726 = v3734
							end
						end
					end
				end
				local _, v3735
				v3735, _ = pcall(getconnections, v3726)
				if v3735 and type(v3727) == "table" then
					for _, v3736 in ipairs(v3727) do
						if type(v3736.Function) == "function" then
							table.insert(v3728.trigger, v3736.Function)
						end
					end
				end
				local v3737 = #v3728.hold
				if v3737 == 0 and #v3728.trigger == 0 then
					return nil
				end
				return v3737
			end

			v3672 = _FH_NV(v3685)

			v3673 = function(...)
				if not nil then
					return nil
				end
				local v3738 = v3672(nil)
				if not v3738 then
					return nil
				end
				for _, _ in ipairs(v3738.hold) do
				end
				tick()
				return {}
			end

			_FH_NV(v3673)
			v3673 = _FH_NV

			v3674 = function()
				return false
			end

			v3673 = v3673(v3674)
			v3673 = nil
			v3674 = _FH_NV
			local v3686 = v3668

			local function v3687(...)
				local Character23 = v3686.Character
				if not Character23 then
					return
				end
				local Humanoid12 = Character23:FindFirstChildOfClass("Humanoid")
				local v3739 = Character23:FindFirstChild(nil)
				if not v3739 then
					v3739 = v3686.Backpack
					if v3739 then
						v3739 = v3686.Backpack:FindFirstChild(nil)
					end
				end
				if v3739 and Humanoid12 then
					Humanoid12:EquipTool(v3739)
				end
			end

			v3674 = v3674(v3687)
			v3673 = v3674
			v3674 = nil
			local v3688 = v3668

			v3675 = function()
				local Character24 = v3688.Character
				if not Character24 then
					return
				end
				local v3740 = Character24:FindFirstChild("HumanoidRootPart")
				if not v3740 then
					v3740 = Character24:FindFirstChild("UpperTorso")
				end
				return v3740
			end

			v3674 = _FH_NV(v3675)
			local v3689 = {}
			v3675 = {}
			v3676 = Vector3
			v3676 = v3676.new
			v3677 = -5
			v3676 = v3676(-337, v3677, 100)
			v3675.refVec = v3676
			v3689.b1 = v3675
			v3675 = {}
			v3676 = Vector3
			v3676 = v3676.new
			v3677 = -5
			v3676 = v3676(-335, v3677, 20)
			v3675.refVec = v3676
			v3689.b2 = v3675
			v3675 = nil
			v3676 = _FH_NV
			local v3690 = v3668

			local function v3691(...)
				local v3741 = WaitForChild5
				if not v3741 then
					return v3741
				end
				local v3742 = v3690.Name
				if not v3742 then
					v3742 = ""
				end
				local lower12 = v3742:lower()
				local v3743 = v3690.DisplayName
				if not v3743 then
					v3743 = ""
				end
				local lower13 = v3743:lower()
				local v3744, v3745, v3746
				v3746, v3745, v3744 = ipairs(WaitForChild5:GetChildren())
				while true do
					local v3747
					v3744, v3747 = v3746(v3745, v3744)
					if v3744 == nil then
						break
					else
						local PlotSign6 = v3747:FindFirstChild("PlotSign")
						if v3747 then
							v3747 = PlotSign6:FindFirstChild("SurfaceGui")
						end
						if v3747 then
							v3747 = PlotSign6.SurfaceGui:FindFirstChild("Frame")
						end
						if v3747 then
							v3747 = PlotSign6.SurfaceGui.Frame:FindFirstChild("TextLabel")
						end
						if v3747 and v3747.Text ~= "Empty Base" then
							local v3748 = ""
							local lower14 = v3747.Text:gsub("'s Base$", ""):gsub("'s base$", ""):gsub("%s+$", v3748):lower()
							if not (lower14 == lower12 or lower14 == lower13) then
								table.insert(v3748, nil)
							end
						end
					end
				end
				return v3746
			end

			v3676 = v3676(v3691)
			v3675 = v3676
			v3676 = nil
			local v3692 = v3668

			v3677 = function()
				return false
			end

			v3676 = _FH_NV(v3677)

			local function v3693(...)
				local _ = 5733 + bit32.rrotate(
					bit32.countrz((math.modf(3.141592653589793))),
					8
				) + -5727
				if not (nil and ((nil).Parent and nil)) then
					return
				end
				local v3749, v3750, v3751
				if v3669 then
					local function v3752()
						v3669:Disable()
					end

					pcall(_FH_NV(v3752))
					v3749 = nil
					v3750 = nil
					v3751 = nil
				end
				local v3753, v3754

				local function v3755()
					local v3757 = tick()
					while v3753 do
						local Parent12 = v3753.Parent
						if not Parent12 then
							break
						end
						local v3758 = Parent12 - v3753.Position
						local Magnitude5 = Vector3.new(v3758.X, 0, v3758.Z).Magnitude
						if Magnitude5 < v3750 or v3751 < tick() - v3757 then
							break
						end
						if Magnitude5 < 25 then
							math.max(60, v3749 * (Magnitude5 / 25))
						end
						v3753.Velocity = Vector3.new
						v3666.Heartbeat:Wait()
					end
					if v3753 and v3753.Parent then
						v3753.Velocity = Vector3.new(0, 0, 0)
						v3753.CFrame = CFrame.new(0)
					end
				end

				pcall(_FH_NV(v3755))
				if v3669 then
					local function v3756(...)
						local bnot3 = bit32.bnot
						local v3759
						v3759 = 263 <= string.len("$\212\"")
						v3759 = v3759 and 299 or 100
						bnot3(v3759)
						return (nil)()
					end

					pcall(_FH_NV(v3756))
				end
			end

			v3677 = nil

			v3678 = function(...)
				local v3760 = nil - -1
				repeat
					v3760 = v3760 + -1
				until not (1 <= v3760 and not v3676)
				local v3761 = v3760 - 1
				repeat
					v3761 = v3761 + 1
				until not (v3761 <= 1)
			end

			v3677 = _FH_NV(v3678)
			local v3694 = v3668

			local function v3695(...)
				if not nil then
					return
				end
				if v3669 then
					local function v3762()
						v3669:Disable()
					end

					pcall(_FH_NV(v3762))
				end
				local v3763, v3764, v3765, v3766, v3767

				local function v3768(...)
					task.wait(0.3)
					local v3770 = workspace.Gravity
					if not v3770 then
						v3770 = 196.2
					end
					local v3771 = v3763
					v3771 = v3771 and v3763.Y or v3764.Position.Y
					local v3772 = math.max(v3765[1].Y - v3771, 0)
					local v3773 = math.sqrt(2 * v3770 * v3772) * 0.88
					local v3774 = v3694.Character
					if v3774 then
						v3774 = v3694.Character:FindFirstChildOfClass("Humanoid")
					end
					if v3774 then
						local v3775 = v3774

						local function v3776()
							v3775:ChangeState(Enum.HumanoidStateType.Jumping)
						end

						pcall(_FH_NV(v3776))
					end
					local wait6 = task.wait
					wait6(0.05)
					local v3777 = Vector3.new
					wait6(0.05, v3777(0, nil, 0))
					if 0 < v3773 then
						task.wait(v3777)
					end
					if v3766 then
						v3777 = v3766
						pcall(v3777)
					end
					if 0 < v3773 then
						v3777 = task.wait
						v3777(0)
					end
					if v3777 then
						pcall(0)
					end
				end

				pcall(v3768)
				if v3669 then
					local function v3769()
						v3669:Enable()
					end

					pcall(_FH_NV(v3769))
				end
			end

			v3678 = nil
			v3679 = _FH_NV

			local function v3696(...)
				local v3782, v3783
				local v3784 = "Base"
				local v3785 = (nil)(v3782, v3784)
				if v3785 then
					v3784 = "Spawn"
					local v3786 = v3785
					v3785 = v3785:FindFirstChild(v3784)
					v3782 = v3786
				end
				if v3782 then
					v3782 = v3785:FindFirstChild("PromptAttachment")
					v3784 = v3785
				end
				if v3784 then
					v3783 = "ProximityPrompt"
					v3784 = v3782:FindFirstChildWhichIsA(v3783)
				end
				return v3784, v3783
			end

			v3679 = v3679(v3696)
			v3678 = v3679
			v3679 = nil

			local function v3697(...)
				local v3787 = nil
				local v3788 = v3674()
				if not v3788 then
					return nil
				end
				if #v3675() == 0 then
					return nil
				end
				local v3789 = nil
				local v3790 = math.huge
				for _, v3791 in ipairs(nil) do
					local AnimalPodiums4 = v3791:FindFirstChild("AnimalPodiums")
					if AnimalPodiums4 then
						local v3792, v3793, v3794, v3795
						v3795, v3794, v3793 = ipairs(v48(v3787))
						local v3796 = v3794
						local _leave54 = false
						while true do
							local v3797
							v3793, v3797 = v3795(v3794, v3793)
							if v3793 == nil then
								break
							else
								if v3797:IsA("BasePart") then
									v3792 = v3797.Position
									_leave54 = true
									break
								end
								v3796 = v3793
							end
						end
						if not _leave54 then
							v3793 = v3796
						end
						local v3798 = true
						if v3792 then
							v3793 = (v3792 - v3689.b1.refVec).Magnitude
							v3798 = v3793 < (v3792 - v3689.b2.refVec).Magnitude
						end
						if not v3793 then
							if v3793 then
								v3793 = "2"
							end
						end
						if not v3793 then
							v3793 = "9"
						end
						v3787 = AnimalPodiums4:FindFirstChild(v3793)
						if v3787 then
							local v3799 = v3787:FindFirstChild("Claim")
							if v3799 then
								v3799 = v3787.Claim:FindFirstChild("Main")
							end
							if v3799 then
								local Magnitude6 = (v3788.Position - v3799.Position).Magnitude
								if Magnitude6 < v3790 then
									local v3800 = v3678(v3787)
									if v3800 then
										v3789 = { prompt = v3800, isEnemyBase1 = v3798 }
										v3790 = Magnitude6
									end
								end
							end
						end
					end
				end
				return v3789
			end

			v3679 = _FH_NV(v3697)

			local function v3698(...)
				local v3801, v3802, v3803, v3804, v3805, v3806, v3807

				local function v3808()
					local function v3809(...)
						local v3810 = nil
						local Walk = "Walk"
						local v3811 = v2881.startStealHold(v3801.prompt, Walk)
						if v3811 then
							v3810 = 0.8
							v2881.waitForStealTime(Walk, v3810)
						end
						v3673()
						local v3812, v3813, v3814
						if Walk then
							local v3815 = v3677
							local v3816 = table.create(1)
							Vector3.new(-351.49, -6.65, 113.72)
							local new32 = Vector3.new
							v3815(v3810, v3816)
							local walkTo = v3802.walkTo
							v3815(v3810, walkTo, 168)
							v3814 = 0.1
							task.wait(v3814)
							local jumps = v3802.jumps
							local v3817 = v3802.floor
							new32(-352.54, -6.83, 6.66)
							v3813 = v3811
							v3812 = false
							if not v3817 then
								v3817 = v3802.walkTo
								v3813 = v3811
								v3812 = false
							end

							local function v3818()
								task.wait(0.15)
								if v0 then
									local _ = -3288320338 + bit32.lrotate(
										string.byte("\207\240\240", 2, 2) + 152,
										23
									) + -13843
									pcall(0.15)
								end
								if v3813 then
									pcall(v2881.finishStealHold, v3813)
								end

								local function v3829()
									v3803.CFrame = CFrame.new(Vector3.new(-349.73, 7.06, 35.52))
								end

								pcall(_FH_NV(v3829))
							end

							v3814(walkTo, jumps, v3817, v3818, nil)
							if v3814 then
								v3814 = nil
							end
							v3813 = v3814
						elseif v3801.isEnemyBase1 then
							local v3819 = v3677
							local v3820 = table.create(3)
							local v3821 = Vector3.new(-352.54, -6.83, 6.66)
							local v3822 = Vector3.new(-351.49, -6.65, 113.72)
							local v3823 = v3804
							if not v3823 then
								v3823 = Vector3.new(-329.485, -5.303, 102.672)
							end
							v3820[1] = v3821
							v3820[2] = v3822
							v3820[3] = v3823
							v3819(v3810, v3820)
							task.wait(0.25)
							v3814 = -351.856
							v3813 = v3811
							v3812 = Vector3.new(v3814, -7.302, 88.026)
						else
							local v3824 = v3677
							local v3825 = table.create(3)
							local v3826 = Vector3.new(-351.49, -6.65, 113.72)
							local v3827 = Vector3.new(-352.54, -6.83, 6.66)
							local v3828 = v3804
							if not v3828 then
								v3828 = Vector3.new(-329.4877, -5.3029, 17.6154)
							end
							v3825[1] = v3826
							v3825[2] = v3827
							v3825[3] = v3828
							v3824(v3810, v3825)
							task.wait(0.25)
							v3814 = -350.485
							v3813 = v3811
							v3812 = Vector3.new(v3814, -7.302, 34.883)
						end
						if v3813 then
							v3812 = v2881.waitForStealTime
							v3812(v3814, 1.3)
						end
						v3812 = task
						v3812 = v3812.wait
						if not v3814 then
							v3814 = 0.15
						end
						v3812(v3814)
						v3812 = v0
						if v3812 then
							v3812 = pcall
							v3814 = v0
							v3812(v3814)
						end
						v3812 = CFrame
						v3812 = v3812.new
						v3812 = v3812(v3814)
						if v3813 then
							v3812 = v2881.finishStealHold
							v3812(v3814)
						end
					end

					pcall(v3809)
				end

				task.spawn(v3808)
			end

			local v3699 = v3668

			local function v3700(...)
				if v3670 then
					return
				end
				if tick() - v3671 < 0.8 then
					return
				end
				local Character25 = v3699.Character
				if not Character25 then
					return
				end
				local Humanoid13 = Character25:FindFirstChildOfClass("Humanoid")
				if not (Humanoid13 and Character25:FindFirstChild("HumanoidRootPart")) then
					return
				end
				local v3830 = v3679(nil)
				if not (v3830 and v3830.prompt and v3830.prompt.Parent) then
					return
				end
				v3683()
				tick()
				local v3831 = v516
				if not v3831 then
					v3831 = "Flying Carpet"
				end
				local v3832 = Character25:FindFirstChild(v3831)
				if not v3832 then
					v3832 = v3699.Backpack
					if v3832 then
						v3832 = v3699.Backpack:FindFirstChild(v3831)
					end
				end
				if v3832 then
					Humanoid13:EquipTool(v3832)
				end
			end

			return (_FH_NV(v3700))
		end

		local v2883 = v2882()
		v2872 = nil
		_FH_yield()

		local function v2884(...)
			local v3833 = {}

			local function v3834(...)
				local v3871 = nil
				v3871 = v3871 and true or false
				v3833.potion = v3871
			end

			_FH_NV(v3834)

			local function v3835(...)
				local v3872 = nil
				if v3872 then
					v3872 = "Prime"
				end
				local v3873
				v3873 = not not false
				v3873 = v3873 and 94 or string.byte("\18t\145", 3, 3)
				if not v3872 then
					v3872 = "Walk"
				end
				v3833.method = v3872
			end

			_FH_NV(v3835)
			if not cloneref then
				v3835 = function()
					local v3874
					v3874 = string.byte("\t", 1, nil) < 363
					v3874 = v3874 and 107 or 8
					return false, 0, -20
				end

				_FH_NV(v3835)
			end
			local game34 = game
			local GetService26 = game34.GetService
			local v3836 = v3835(GetService26(game34, "Players"))
			local v3837 = GetService26(game:GetService("Workspace"))
			local v3838 = v3836.LocalPlayer
			local v3839, v3840, v3841, v3842, v3843, v3844, v3845, v3846
			local v3847, v3848, v3849
			if not v3838 then
				v3838 = v3836.PlayerAdded:Wait()
				v3839 = nil
				v3840 = nil
				v3841 = nil
				v3842 = nil
				v3843 = nil
				v3844 = nil
				v3845 = nil
				v3846 = nil
				v3847 = nil
				v3848 = nil
				v3849 = nil
			end
			Vector3.new(-337, -5, 100)
			Vector3.new(-337, -5, 103)
			Vector3.new(-335, -5, 20)
			Vector3.new(-334.8, -5.04, 18.9)
			CFrame.new(-371, -6, 30)
			CFrame.new(-373, -7, 83)
			local v3850 = {
				GameNetPVHeaderRotationalVelocityZeroCutoffExponent = -5000,
				LargeReplicatorWrite5 = true,
				LargeReplicatorEnabled9 = true,
				AngularVelociryLimit = 360,
				TimestepArbiterVelocityCriteriaThresholdTwoDt = 2147483646,
				S2PhysicsSenderRate = 15000,
				DisableDPIScale = true,
				MaxDataPacketPerSend = 2147483647,
				PhysicsSenderMaxBandwidthBps = 20000,
				TimestepArbiterHumanoidLinearVelThreshold = 21,
				MaxMissedWorldStepsRemembered = -2147483648,
				PlayerHumanoidPropertyUpdateRestrict = true,
				SimDefaultHumanoidTimestepMultiplier = 0,
				StreamJobNOUVolumeLengthCap = 2147483647,
				DebugSendDistInSteps = -2147483648,
				GameNetDontSendRedundantNumTimes = 1,
				CheckPVLinearVelocityIntegrateVsDeltaPositionThresholdPercent = 1,
				CheckPVDifferencesForInterpolationMinVelThresholdStudsPerSecHundredth = 1,
				LargeReplicatorSerializeRead3 = true,
				ReplicationFocusNouExtentsSizeCutoffForPauseStuds = 2147483647,
				CheckPVCachedVelThresholdPercent = 10,
				CheckPVDifferencesForInterpolationMinRotVelThresholdRadsPerSecHundredth = 1,
				GameNetDontSendRedundantDeltaPositionMillionth = 1,
				InterpolationFrameVelocityThresholdMillionth = 5,
				StreamJobNOUVolumeCap = 2147483647,
				InterpolationFrameRotVelocityThresholdMillionth = 5,
				CheckPVCachedRotVelThresholdPercent = 10,
				WorldStepMax = 30,
				InterpolationFramePositionThresholdMillionth = 5,
				TimestepArbiterHumanoidTurningVelThreshold = 1,
				SimOwnedNOUCountThresholdMillionth = 2147483647,
				GameNetPVHeaderLinearVelocityZeroCutoffExponent = -5000,
				NextGenReplicatorEnabledWrite4 = true,
				TimestepArbiterOmegaThou = 1073741823,
				MaxAcceptableUpdateDelay = 1,
				LargeReplicatorSerializeWrite4 = true
			}
			local function v3851()
			end
			local v3852 = v3838

			local function v3853(...)
				local v3875 = nil
				if v532 and v532.suspend then
					v3875 = 8
					v532.suspend(v3875)
				end
				local Character26 = v3852.Character
				local Backpack6 = v3875:FindFirstChild("Backpack")
				if not (Character26 and Backpack6) then
					return
				end
				for _, v3876 in ipairs(Character26:GetChildren()) do
					if v3876:IsA("Tool") and v3876.Name ~= v516 then
						local v3877 = v3876

						local function v3878()
							while true do
								local _ = 31260 + bit32.band(
									180,
									81,
									(string.byte("\163\250\134\184", 4, nil))
								) + -31195
							end
						end

						pcall(_FH_NV(v3878))
					end
				end
				local FindFirstChild15 = Backpack6:FindFirstChild(v516)
				if not FindFirstChild15 then
					FindFirstChild15 = Character26:FindFirstChild(v516)
				end
				if FindFirstChild15 then
					local Humanoid14 = Character26:FindFirstChildOfClass("Humanoid")
					if Humanoid14 then
						local v3879 = FindFirstChild15
						local function v3880()
						end
						pcall(_FH_NV(v3880))
						if v532 and v532.suspend then
							v532.suspend(8)
						end
					end
				end
			end

			v3839 = _FH_NV
			local v3854 = v3838
			v3840 = function()
			end
			v3839 = v3839(v3840)
			v3839 = nil
			v3840 = _FH_NV
			local v3855 = v3838

			v3841 = function(...)
				local v3881 = nil
				local _ = -4293069030 + bit32.rrotate(
					-459,
					(string.unpack("<i8", "\20\0\0\0\0\0\0\0"))
				) + -22273
				local Character27 = v3855.Character
				if v3881 then
					v3881 = Character27:FindFirstChildOfClass("Humanoid")
				end
				if not v3881 then
					return false
				end
				local v3882 = v3881:FindFirstChild("BodyHeightScale")
				local v3883
				if v3882 then
					v3883 = v3881
				else
					v3882 = v3881:FindFirstChild("BodyDepthScale")
					v3883 = v3881
				end
				if not v3882 then
					v3882 = v3881:FindFirstChild("BodyWidthScale")
					v3883 = v3881
				end
				if v3883 then
					v3883 = v3882:IsA("NumberValue")
				end
				if v3883 then
					v3883 = 2.5 <= v3882.Value
				end
				return v3883
			end

			v3840 = v3840(v3841)
			v3839 = v3840
			v3840 = nil
			v3841 = _FH_NV

			local function v3856()
				local potion = v3833.potion
				if (potion or potion) and not v3839() then
					local activate = v557.activate
					if activate and activate() then
						pcall(v557.activate)
					end
				end
			end

			v3841 = v3841(v3856)
			v3840 = v3841
			v3841 = nil

			v3842 = function(...)
				if v557.enabled and not (v3839() or not v557.activate) then
					pcall(v557.activate)
				end
			end

			v3841 = _FH_NV(v3842)
			v3842 = nil
			v3843 = _FH_NV

			v3844 = function()
				local v3884
				v3884 = v3833.method == "Prime"
				return v3884
			end

			v3843 = v3843(v3844)
			v3842 = v3843
			v3843 = nil
			v3844 = _FH_NV

			v3845 = function()
				return v3833.method
			end

			v3844 = v3844(v3845)
			v3843 = v3844
			v3844 = nil
			v3845 = nil
			v3846 = nil
			local v3857 = v3838

			local function v3858()
				return false
			end

			local v3859 = _FH_NV(v3858)
			v3844 = v3859

			local function v3860(...)
				local v3885 = nil
				local v3886 = nil - -1
				repeat
					v3886 = v3886 + -1
				until not (nil <= v3886 and not v3844(v3885, nil))
				local v3887 = v3886 - 1
				while true do
					v3887 = v3887 + 1
					if v3887 <= nil then
						if v3887 < CFrame.new(v3885) then
							v3885 = 0.135
							task.wait(v3885)
						end
					else
						break
					end
				end
			end

			v3845 = v3859(v3860)
			local v3861 = v3838

			v3846 = function(...)
				if not (nil and ((nil).Parent and nil)) then
					return
				end
				local v3888
				if nil then
					v3888 = nil
				else
					v3888 = 6
				end
				local v3889 = v3888
				if not v3888 then
					v3889 = 6
				end
				v3889 = v3853
				v3889()
				v3889 = nil

				local function v3890()
					local bxor4 = bit32.bxor
					local v3899 = false
					v3899 = v3899 and 8 or 412
					bxor4(v3899, 484, 12)
					require(v3861.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
				end

				pcall(_FH_NV(v3890))
				if v3889 then
					local function v3891()
						v3889:Disable()
					end

					pcall(_FH_NV(v3891))
				end
				local suspend3 = v565.suspend
				suspend3("steal")
				local v3892, v3893, v3894
				if suspend3 then
					v3892 = nil
					v3893 = nil
					v3894 = nil
					if v532.suspend then
						v532.suspend(8)
						v3892 = nil
						v3893 = nil
						v3894 = nil
					end
				end
				local v3895, v3896

				local function v3897()
					local v3900 = tick()
					while v3895 do
						local Parent13 = v3895.Parent
						if not Parent13 then
							break
						end
						local v3901 = Parent13 - v3895.Position
						local Magnitude7 = Vector3.new(v3901.X, 0, v3901.Z).Magnitude
						if Magnitude7 < v3893 or v3894 < tick() - v3900 then
							break
						end
						if Magnitude7 < 25 then
							math.max(60, v3892 * (Magnitude7 / 25))
						end
						v3895.Velocity = Vector3.new
						task.wait()
					end
					if v3895 and v3895.Parent then
						v3895.Velocity = Vector3(0, 0, 0)
						v3895.CFrame = CFrame.new(0)
					end
				end

				pcall(_FH_NV(v3897))
				if v3889 then
					local function v3898()
						v3889:Enable()
					end

					pcall(_FH_NV(v3898))
				end
				v565.unsuspend("steal")
			end

			local v3862 = v3838

			local function v3863(...)
				local v3902 = nil
				local Character28 = v3862.Character
				if nil then
					v3902 = "HumanoidRootPart"
					Character28:FindFirstChild(v3902)
				end
				return v3846(v3902, nil, nil, nil, nil)
			end

			_FH_NV(v3863)
			local v3864 = v3838
			local function v3865()
			end
			v3847 = nil

			local function v3866()
				local band3 = bit32.band
				local v3903 = false
				v3903 = v3903 and 463 or string.byte("\7\189", 2, 2)
				band3(v3903, 307)
				local v3904 = v3847
				local v3905 = v3904
				if not v3904 then
					local pcall27 = pcall

					local function v3906(...)
						local v3908 = true
						v3908 = v3908 and 327 or string.unpack(">i8", "\0\0\0\0\0\0\0015")
						string.byte("e", 1, nil)
						;(nil)(game:GetService("ReplicatedStorage"):WaitForChild("Controllers"):WaitForChild("PlotController"))
					end

					pcall27(_FH_NV(v3906))
					v3905 = pcall27
				end
				v3905 = nil
				local pcall28 = pcall

				local function v3907()
					local _ = -4294956658 + bit32.bnot((bit32.bor(
						string.unpack(">i8", "\0\0\0\0\0\0\1\160"),
						137,
						(string.byte("\206\138\142", 3, 3))
					))) + -10125
				end

				pcall28(_FH_NV(v3907))
				return pcall28
			end

			local v3867 = v3838

			v3848 = function(...)
				local v3909, v3910, v3911
				local Character29 = v3867.Character
				if v3909 then
					v3911 = "Humanoid"
					v3909 = Character29:FindFirstChildOfClass(v3911)
					v3910 = Character29
				end
				if v3910 then
					v3910 = Character29:FindFirstChild("HumanoidRootPart")
					v3911 = Character29
				end
				if not (v3909 and v3910) then
					return
				end
				v3911()
				local v3912 = v3911()
				if not v3912 then
					return
				end
				local Order = "Order"
				local GetAttribute4 = v3912:GetAttribute(Order)
				if GetAttribute4 == 2 then
					v3912()
					local v3913 = v3910

					local function v3914()
						v3913.CFrame = v3912.Spawn.CFrame
					end

					pcall(_FH_NV(v3914))
					task.wait(0.135)
					v3865(Vector3.new(-368.18, -6.97, 69.17))
					task.wait(0.135)
					v3865(Vector3.new(-335.65, -5.103, 100.07))
					task.wait(0.25)
					v3865(Vector3.new(-351.98, -7.002, 75.54))
					v3840()
				elseif GetAttribute4 == 1 then
					v3912()
					local v3915 = v3910

					local function v3916()
						string.unpack(">i8", "\0\0\0\0\0\0\0\8")
						v3915.CFrame = v3912.Spawn
					end

					pcall(Order(v3916))
					task.wait(0.135)
					v3865(Vector3.new(-375.3137512207031, -7.252167701721191, 74.2289810180664))
					task.wait(0.135)
					v3865(Vector3.new(-336.11, -5.037, 19.84))
					task.wait(0.25)
					v3865(Vector3.new(-352.86, -7.002, 44.18))
					v3840()
				end
			end

			local v3868 = v3838
			local v3869 = {}

			v3848 = function(...)
				local v3917, v3918, v3919
				local Character30 = v3868.Character
				if v3917 then
					v3919 = "Humanoid"
					v3917 = Character30:FindFirstChild(v3919)
					v3918 = Character30
				end
				if v3918 then
					v3918 = Character30:FindFirstChild("HumanoidRootPart")
					v3919 = Character30
				end
				if not (v3917 and v3918) then
					return
				end
				if v3919 then
					v3919 = v532.suspend
				end
				if v3919 then
					v3919 = v532.suspend
					v3919(30)
				end
				v3919()
				local userEnabled = v565.userEnabled
				if userEnabled then
					v565.set(false)
				end
				local nearest = v2842.nearest
				local best = v2842.best
				local priorityGrab = v2842.priorityGrab
				local fast = v2842.fast
				local enabled3 = v557.enabled
				v2842.setNearest(false)
				v2842.setBest(false)
				v2842.setPriorityGrab(false)
				v2842.setFast(false)
				if enabled3 then
					v557.set(false)
				end
				local clearSession2 = v557.clearSession
				local v3920 = clearSession2
				if clearSession2 then
					local pcall29 = pcall
					pcall29(v557.clearSession)
					v3920 = pcall29
				end
				v3920 = false

				local function v3921()
					local v3950 = v3920
					if v3950 then
						return
					end
					if v3950 then
						v3950 = v2842.setNearest
					end
					if v3950 then
						v2842.setBest(true)
					end
					local v3951 = priorityGrab
					if v3951 then
						v3951 = v2842.setPriorityGrab
						v3951(true)
					end
					if v3951 then
						v3951 = v2842.setFast
						v3951(true)
					end
					if v3951 then
						v557.set(true)
					end
				end

				local v3922 = _FH_NV(v3921)
				local Plots12 = v3922:FindFirstChild("Plots")
				if not Plots12 then
					v3922()
					return
				end
				local v3923 = v3868.Name
				if not v3923 then
					v3923 = ""
				end
				local lower15 = v3923:lower()
				local v3924 = v3868.DisplayName
				if not v3924 then
					v3924 = ""
				end
				local lower16 = v3924:lower()

				local function v3925(...)
					local v3952, v3953
					v3953 = string.byte("\185O\19\152", 3, 4) < bit32.bnot(9)
					v3953 = v3953 and string.unpack(">i8", "\0\0\0\0\0\0\0A") or 219
					if not v3952 then
						v3952 = ""
					end
					local lower17 = v3952:lower()
					local v3954
					v3954 = lower17 == lower15
					local v3955
					v3955 = lower17 == v3954
					return v3955
				end

				local v3926 = _FH_NV(v3925)
				local v3927 = {}
				local v3928, v3929, v3930
				v3930, v3929, v3928 = ipairs(Plots12:GetChildren())
				local v3931
				while true do
					local v3932
					v3928, v3932 = v3930(v3929, v3928)
					if v3928 == nil then
						break
					else
						local PlotSign7 = v3932:FindFirstChild("PlotSign")
						if PlotSign7 then
							v3931 = PlotSign7:FindFirstChild("SurfaceGui")
						else
							v3931 = PlotSign7
						end
						if v3931 then
							v3931 = PlotSign7.SurfaceGui:FindFirstChild("Frame")
						end
						if v3931 then
							v3931 = PlotSign7.SurfaceGui.Frame:FindFirstChild("TextLabel")
						end
						if v3931 and v3931.Text ~= "Empty Base" and
							not v3926((v3931.Text:gsub("'s Base$", ""):gsub("'s base$", ""):gsub("%s+$", ""))) then
							table.insert(v3927, v3932)
						end
					end
				end
				local v3933 = v3918

				local function v3934(...)
					local v3956, v3957
					if #v3927 == 0 then
						return nil
					end
					local v3958 = math.huge
					local v3959, v3960, v3961
					v3961, v3960, v3959 = ipairs(v3927)
					local v3962, v3963
					while true do
						local v3964
						v3959, v3964 = v3961(v3960, v3959)
						if v3959 == nil then
							break
						else
							v3962 = v3964
							local AnimalPodiums5 = v3964.FindFirstChild(v3962, "AnimalPodiums")
							if AnimalPodiums5 then
								v3962 = nil
								local v3965 = v3964

								local function v3966()
									local v3971 = false
									v3971 = v3971 and 473 or 261
									if not v3965.PrimaryPart then
										v3965:GetPivot()
									end
								end

								pcall(_FH_NV(v3966))
								if not v3962 then
									local BasePart2 = v3964:FindFirstChildWhichIsA("BasePart", true)
									if BasePart2 then
										v3962 = BasePart2.Position
									end
								end
								if v3962 and
									(v3962 - v3869.b1.refVec).Magnitude < (v3962 - v3869.b2.refVec).Magnitude then
								end
								local ipairs6 = ipairs
								local v3967 = { "1", "10" }
								for _, _ in ipairs6(v3967) do
									local FindFirstChild16 = AnimalPodiums5:FindFirstChild(v3956)
									if FindFirstChild16 then
										local v3968 = FindFirstChild16:FindFirstChild("Claim")
										if v3968 then
											v3956 = FindFirstChild16.Claim
											v3968 = v3956:FindFirstChild("Main")
										else
											v3956 = FindFirstChild16
										end
										if v3968 then
											v3956 = (v3933.Position - v3968.Position).Magnitude
											if v3956 < v3958 then
												local v3969 = FindFirstChild16:FindFirstChild("Base")
												if v3969 then
													v3969 = FindFirstChild16.Base.FindFirstChild
													v3957 = v3969 * v3957
												end
												if v3969 then
													v3969 = v3969:FindFirstChild("PromptAttachment")
												end
												if v3969 then
													v3963 = v3969:FindFirstChildWhichIsA("ProximityPrompt")
												else
													v3963 = v3969
												end
												if v3963 then
													local v3970
													v3970.position = v3968.Position
													v3970.promptPos = v3969.WorldPosition
													v3958 = v3956
												else
													v3958 = v3956
												end
											end
										end
									end
								end
							end
						end
					end
					return v3961
				end

				local v3935 = v516
				local v3936 = Character30:FindFirstChild(v3935)
				if not v3936 then
					v3936 = v3868.Backpack
					if v3936 then
						v3935 = v516
						v3936 = v3868.Backpack:FindFirstChild(v3935)
					end
				end
				local v3937 = v3934()
				if not v3937 then
					v3935()
					return
				end
				local v3938 = (v3937.position - v3869.b1.refVec).Magnitude
				local v3939
				v3939 = v3938 < (v3937.position - v3869.b2.refVec).Magnitude
				v3939 = v3939 and v3869.b1.finalPos or v3869.b2.finalPos
				if v3936 then
					v3938 = pcall
					local v3940 = v3917
					local v3941 = v3936
					local function v3942()
					end
					v3938(_FH_NV(v3942))
				end
				local v3943 = { plotName = v3937.plot.Name }
				local v3944 = tonumber(v3937.podiumName)
				local v3945 = v3922
				local v3946 = v3939
				if not v3944 then
					v3944 = v3937.podiumName
					v3945 = v3922
					v3946 = v3939
				end
				v3943.pod = v3944
				v3938(v3943)

				local function v3947(...)
					local v3972
					v3972 = ((nil).position - v3869.b1.refVec).Magnitude < ((nil).position - v3869.b2.refVec).Magnitude
					local v3973
					if v3972 then
						v3973 = Vector3.new(-337, -5, 100)
					else
						v3973 = v3972
					end
					if not v3973 then
						v3973 = Vector3.new(-335, -5, 20)
					end
					local v3974
					if v3972 then
						v3974 = Vector3.new(-347.12, -6.67, 81.64)
					else
						v3974 = v3972
					end
					if not v3974 then
						v3974 = Vector3.new(-349.43, -6.78, 37.47)
					end
					local v3975, v3976, v3977
					if v3972 then
						table.create(2)
						Vector3.new(-352.54, -6.83, 6.66)
						Vector3.new(-351.49, -6.65, 113.72)
						v3977 = Vector3.new
						v3976 = -337
						v3977(v3976, -5, 103)
						v3975 = nil
					else
						table.create(2)
						Vector3.new(-351.49, -6.65, 113.72)
						Vector3.new(-352.54, -6.83, 6.66)
						v3977 = Vector3.new
						v3976 = -334.8
						v3977(v3976, -5.04, 18.9)
						v3975 = nil
					end
					local v3978 = v3973

					local function v3979(...)
						if not v3843() then
							if v3978 and v3844(nil, v3978) then
								CFrame.new(v3978)
							else
								v3845(nil, v3975)
							end
							return
						end
						local v3992 = #v3975 - -1
						repeat
							v3992 = v3992 + -1
						until not (nil <= v3992 and not v3844)
						local v3993 = v3975
						for _ = 1, #v3993 do
						end
					end

					_FH_NV(v3979)
					local v3980 = v3842()
					local v3981, v3982, v3983, v3984, v3985, v3986
					if v3980 then
						if v3980 then
							v3980 = (nil).prompt
						end
						if not (v3980 and v3980.Parent) then
							return
						end
						math.huge()
						if v3972 then
							v3986 = CFrame.new(-343.08, -6.84, 93.2)
						else
							v3986 = v3972
						end
						if not v3986 then
							CFrame.new(-342.91, -6.81, 28)
						end
						task.wait(0.25)
						if v3972 then
							v3985 = CFrame.new(-340.16, -7.29, 48.82)
						else
							v3985 = v3972
						end
						if not v3985 then
							CFrame.new(-340.16, -7.29, 72.4)
						end
						task.wait(0.12)
						if v3972 then
							v3984 = CFrame.new(-341.26, -7.29, 66.95)
						else
							v3984 = v3972
						end
						if not v3984 then
							CFrame.new(-341.26, -7.29, 54.27)
						end
						task.wait(0.12)
						if v3972 then
							v3983 = CFrame.new(-339.93, -7.29, 82.14)
						else
							v3983 = v3972
						end
						if not v3983 then
							CFrame.new(-339.63, -7.29, 39.33)
						end
						task.wait(0.18)
						local Prime = v2881.startStealHold(v3980, "Prime")
						if v3972 then
							v3982 = CFrame.new(-354.04, -7.21, 90.42)
						else
							v3982 = v3972
						end
						if not v3982 then
							CFrame.new(-354.04, -7.21, 28)
						end
						local v3987 = 0.45
						task.wait(v3987)
						if v3972 then
							v3987 = -334.6
							v3981 = CFrame.new(v3987, -5, 101.3)
						else
							v3981 = v3972
						end
						if not v3981 then
							v3987 = -334.6
							CFrame.new(v3987, -5, 19.3)
						end
						if Prime and Prime.holdBeganAt then
							while true do
								local v3988 = tick()
								v3987 = Prime.holdBeganAt
								if v3988 - v3987 < 1.3 then
									task.wait()
								else
									break
								end
							end
						end
						local v3989 = v3840
						v3989()
						v3989()
						if v3972 then
							v3987 = -351.53
							v3972 = CFrame.new(v3987, -7.29, 83.66)
						end
						if not v3972 then
							v3987 = -350.62
							CFrame.new(v3987, -7.29, 35.91)
						end
						if Prime then
							v2881.finishStealHold(v3987)
						end
					else
						if nil then
							v3979 = (nil).prompt
							if v3979 then
								v3979 = (nil).prompt.Parent
							end
							if v3979 then
								local startStealHold = v2881.startStealHold
								v3977 = (nil).prompt
								v3976 = "Walk"
								v3979 = startStealHold(v3977, v3976)
							end
						end
						if nil then
							v3979 = v2881.waitForStealTime
							v3976 = 0.8
							v3979(nil, v3976)
							v3977 = nil
						end
						v3979(v3977, v3976, v3972)
						task.wait(0.25)
						local v3990 = v3840
						v3990()
						v3990()
						if nil then
							if v3974 then
								v2881.waitForStealTime(nil, 1.3)
								CFrame.new(nil)
							end
							v2881.finishStealHold(nil)
						end
					end
					local v3991 = tick()
					while v3868:GetAttribute("Stealing") == nil and not (1 <= tick() - v3991) do
						task.wait(0.1)
					end
				end

				local v3948 = v3918

				local function v3949()
					local function v3994()
						v3833._semiStealCtx = nil
					end

					pcall(_FH_NV(v3994))
					if v3994 then
						v3994 = v532.unsuspend
					end
					if v3994 then
						v3994 = v532.unsuspend
						v3994()
					end
					local _ = -4294966987 + bit32.bxor(
						13 - string.byte("\132", 1, 1),
						string.unpack("<i8", "m\0\0\0\0\0\0\0"),
						276
					) + 115
					if v3994 then
						v565.set(true)
					end
					if v3833.autoWalk and v3833.walkPoint then
						local function v3995()
							v565.unsuspend("steal")
						end

						pcall(_FH_NV(v3995))

						local function v3996(...)
							local v3997, v3998
							local userEnabled2 = v565.userEnabled
							local v3999 = tonumber(v565.speed)
							if not v3999 then
								v3999 = 29
							end
							local Character31 = v3868.Character
							if v3997 then
								v3997 = Character31:FindFirstChildOfClass("Humanoid")
								v3998 = Character31
							end
							if v3998 then
								v3998 = Character31:FindFirstChild("HumanoidRootPart")
							end
							if v3997 and v3998 then
								local v4000 = tick()
								while tick() < v4000 + 15 do
									local v4001 = Vector3.new(
										v3833.walkPoint.X - v3998.Position.X,
										0,
										v3833.walkPoint.Z - v3998.Position.Z
									)
									if v4001.Magnitude < 3 then
										break
									end
									v3997:MoveTo(v3833.walkPoint)
									if userEnabled2 and 4 < v4001.Magnitude then
										local Unit = v4001.Unit
										Vector3.new(
											Unit.X * v3999,
											v3998.Velocity.Y,
											Unit.Z * v3999
										)
									end
									v3998 = task.wait
									v3998()
									local Character32 = v3868.Character
									if v3998 then
										v3998 = Character32:FindFirstChild("HumanoidRootPart")
									end
									if v3998 then
										v3997 = Character32:FindFirstChildOfClass("Humanoid")
									else
										v3997 = v3998
									end
									if not (v3998 and v3997) then
										break
									end
								end
							end
						end

						pcall(_FH_NV(v3996))
					end
					v3945()
				end

				task.spawn(v3949)
			end

			v3848 = nil
			v3849 = _FH_NV

			local function v3870()
				local v4002
				v4002 = string.byte("j7\234\194", 2, nil) <= 408
				v4002 = v4002 and string.unpack("<i8", "\157\1\0\0\0\0\0\0") or 28
				string.byte(";\227", 2, nil)
				local v4003 = v3833._sessionActivated
				if not v4003 then
					local v4004 = v4003.clock()
					local v4005 = v3833._activatedAt
					if not v4005 then
						v4005 = 0
					end
					v4003 = v4004 - v4005 < 60
				end
				return v4003
			end

			v3849 = v3849(v3870)
			v3848 = v3849
			v3849 = nil
			return "activate"
		end

		local v2885 = v2884()
		SS = v2885
		SS.autoTPUnlockState = false

		function SS.SSExecute()
			local function v4022()
				v2885.execute()
			end

			pcall(_FH_NV(v4022))
		end

		local function v2886()
		end
		table.insert(_G._FH_DragClearers, _FH_NV(v2886))

		local function v2887()
			v2872.savePos()
		end

		UserInputService.InputEnded:Connect(_FH_NV(v2887))

		local function v2888(...)
			if v93 then
				return
			end
			if not v2872 then
				return
			end
			if (nil).UserInputType == Enum.UserInputType.MouseMovement or
				(nil).UserInputType == Enum.UserInputType.Touch then
				local v4023 = (nil).Position - v2872.ds
				if not v2872.moved then
					if v4023.Magnitude < 8 then
						return
					end
					v2872.moved = true
					v2872.ds = (nil).Position
					return
				end
				local AbsoluteSize13 = v559.AbsoluteSize
				local AbsoluteSize14 = v2872.panel.AbsoluteSize
				math.clamp(nil, 0, math.max(0, AbsoluteSize13.X - AbsoluteSize14.X))
				local clamp14 = math.clamp
				local max10 = math.max
				local v4024 = AbsoluteSize13.Y
				local v4025 = AbsoluteSize14.Y
				clamp14(0, 0, max10(0, v4024 - v4025))
				UDim2.new(0, 0, 0, v4025)
			end
		end

		UserInputService.InputChanged:Connect(_FH_NV(v2888))
		local v2889 = {}

		local function v2890(...)
			local Frame38 = Instance.new("Frame")
			UDim2.new(0, nil, 0, 30)
			local v4026 = 0.5
			UDim2.new(0.5, nil, v4026, 30)
			local v4027 = v87
			local v4028
			if nil then
				v4028 = nil
			else
				v4028 = 1
			end
			v4026 = v4026 and 0.925 or 1
			v4027(0.5, v4028 * v4026)
			v561(0.5, 14)
			v69(0.5, 2, 0, 135)
			local Bg3 = "Bg"
			v65(0.5, Bg3)
			local v4029 = "panelpos:" .. nil
			local v4030 = v560.get(Bg3, nil)
			local v4031 = type(nil)
			local v4032 = v4030
			if v4031 == "table" then
				v4032 = v4030
				if #v4030 == 4 then
					v4031 = UDim2.new(v4030[1], v4030[2], v4030[3], v4030[4])
					v4032 = v4030
				end
			end
			v4032 = v547

			local function v4033(...)
				(nil)[29] = 1
				if type(nil) == "table" and false then
					Frame38.Position = UDim2.new(nil, nil, nil, nil)
				end
			end

			v4032(v4031, _FH_NV(v4033))
			v4032 = nil

			local function v4034()
				local AbsoluteSize15 = v559.AbsoluteSize
				if AbsoluteSize15.X < 1 or AbsoluteSize15.Y < 1 then
					return
				end
				local AbsolutePosition5 = Frame38.AbsolutePosition
				local AbsoluteSize16 = Frame38.AbsoluteSize
				local v4061 = math.clamp(
					AbsolutePosition5.X,
					0,
					math.max(0, AbsoluteSize15.X - AbsoluteSize16.X)
				)
				local clamp15 = math.clamp
				local v4062 = AbsolutePosition5.Y
				local max11 = math.max
				local v4063 = AbsoluteSize15.Y - AbsoluteSize16.Y
				if 0.5 < math.abs(v4061 - AbsolutePosition5.X) or
					0.5 < math.abs(clamp15(v4062, 0, max11(0, v4063)) - AbsolutePosition5.Y) then
					UDim2.new(0, v4061, 0, v4063)
				end
			end

			v4032 = _FH_NV(v4034)

			local function v4035()
				local Visible3 = Frame38.Visible
				if Visible3 then
					Visible3.defer(v4032)
				end
			end

			Frame38:GetPropertyChangedSignal("Visible"):Connect(_FH_NV(v4035))
			local Frame39 = Instance.new("Frame")
			UDim2.new(1, 0, 0, 30)
			v65(Frame39, "BgDeep")
			v561(Frame39, 14)
			local Frame40 = Instance.new("Frame")
			UDim2.new(1, 0, 0, 12)
			UDim2.new(0, 0, 1, -12)
			local BgDeep = "BgDeep"
			v65(0, BgDeep)
			v562(Frame39, BgDeep, 12, v558.Text, Enum.Font.GothamBold)
			UDim2.new(1, -40, 1, 0)
			UDim2.new(0, 10, 0, 0)
			local TextButton15 = Instance.new("TextButton")
			UDim2.new(0, 20, 0, 20)
			UDim2.new(1, -26, 0.5, -10)
			v65(TextButton15, "Soft")
			v561(TextButton15, 6)
			local Frame41 = Instance.new("Frame")
			UDim2.new(1, 0, 0, 0)
			UDim2.new(0, 0, 0, 30)
			local UIListLayout3 = Instance.new("UIListLayout")
			UIListLayout3.FillDirection = Enum.FillDirection.Vertical
			UIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
			local v4036 = UDim.new(0, 6)
			UIListLayout3.Padding = v4036
			UIListLayout3.Parent = Frame41
			v4036(Frame41, 8, 8, 8, 8)
			local v4037 = v560.get("panelopen:" .. nil, true)
			local v4038
			v4038 = v4037 and "-" or v4037
			local v4039 = 0
			local v4040 = v4037
			local v4041 = nil
			local v4042 = v4038
			local v4043 = 8
			local v4044 = 8
			local v4045 = nil
			if not v4038 then
				v4039 = 0
				v4040 = v4037
				v4041 = nil
				v4042 = "+"
				v4043 = 8
				v4044 = 8
				v4045 = nil
			end
			v4042 = nil
			v4043 = _FH_NV

			v4044 = function(...)
				local UIScale2 = (nil).FindFirstChildOfClass(nil, "UIScale")
				if UIScale2 and UIScale2.Scale and 0 < UIScale2.Scale then
					return UIScale2.Scale
				end
				return 1
			end

			v4043 = v4043(v4044)
			v4042 = v4043
			v4043 = nil
			v4044 = _FH_NV

			local function v4046()
				local _ = 2215 + bit32.bor(bit32.rrotate(438, 0), 10, 199) + -2662
			end

			v4044 = v4044(v4046)
			v4043 = v4044
			v4044 = nil

			v4045 = function()
				local v4064 = v4040
				v4064 = v4064 and v4039 or 0
				local new34 = UDim2.new
				local v4065 = v4040
				v4065 = v4065 and v4039 or 0
				new34(1, 0, 0, v4065)
				UDim2.new(0, 0, 0, v4065)
				local v4066 = v4041
				UDim2.new(0, v4066, 0, v4065)
				v68(v4066, 0, {})
			end

			v4044 = _FH_NV(v4045)
			v4045 = UIListLayout3
			local AbsoluteContentSize = UIListLayout3.GetPropertyChangedSignal(v4045, "AbsoluteContentSize")
			v4045 = AbsoluteContentSize

			local function v4047(...)
				(nil)()
				;(nil)()
				v4044(false)
			end

			AbsoluteContentSize.Connect(v4045, _FH_NV(v4047))
			v4045 = Frame38
			local Visible2 = Frame38.GetPropertyChangedSignal(v4045, "Visible")
			v4045 = Visible2

			local function v4048()
				if Frame38.Visible then
					local function v4067()
						v4043()
						v4044(false)
					end

					task.defer(_FH_NV(v4067))
				end
			end

			Visible2.Connect(v4045, v4048)
			local spawn14 = task.spawn
			v4045 = _FH_NV

			local function v4049()
				task.wait(0.1)
				if 0 < UIListLayout3.AbsoluteContentSize.Y then
					v4043()
					if v4040 then
						v4044(false)
					end
				end
			end

			spawn14(v4045(v4049))
			v4045 = _FH_NV
			local function v4050()
			end
			v4045 = v4045(v4050)
			local v4051 = v4045
			v4045 = TextButton15.Activated
			local v4052 = v4045
			v4045 = v4045.Connect
			local v4053 = nil

			local function v4054(...)
				local v4068 = v4040
				if v4068 then
					v4068 = "-"
				end
				v560.set("panelopen:" .. nil, v4040)
				if v4040 then
					local _ = 3730 + bit32.rshift(
						string.unpack("<i8", "\188\0\0\0\0\0\0\0") - 184,
						(string.unpack(">i8", "\0\0\0\0\0\0\0\27"))
					) + -3573
					Frame40.Visible = true
					v4044(true)
				else
					v4044(true)
					local function v4069()
					end
					task.delay(0.2, _FH_NV(v4069))
				end
			end

			v4045(v4052, v4054)
			v4045 = nil

			local function v4055()
				local Position5 = Frame38.Position
				local v4070 = table.create(4)
				local Scale6 = Position5.X.Scale
				local Offset6 = Position5.X.Offset
				local Scale7 = Position5.Y.Scale
				local Offset7 = Position5.Y.Offset
				v4070[1] = Scale6
				v4070[2] = Offset6
				v4070[3] = Scale7
				v4070[4] = Offset7
			end

			v4045 = _FH_NV(v4055)

			local function v4056(...)
				local v4071 = 508
				if not v4071 then
					v4071 = 327
				end
				;(nil)[49] = 1206 + (v4071 - 480) + -1229
				if v93 then
					return
				end
				if (nil).UserInputType == Enum.UserInputType.MouseButton1 or
					(nil).UserInputType == Enum.UserInputType.Touch then
				end
			end

			local v4057 = _FH_NV(v4056)
			Frame39.InputBegan:Connect(v4057)
			local insert31 = table.insert
			local v4058 = v2889
			local v4059 = { panel = Frame38, key = v4029, defaultPos = UDim2.new(0.5, nil, 0.5, nil) }
			insert31(v4058, v4059)
			local v4060 = {
				panel = Frame38,
				body = Frame41,
				header = Frame39,
				setWidth = v4051,
				startDrag = v4057
			}
			return v4060
		end

		local function v2891(...)
			local header2 = (nil).header
			local TextLabel17 = Instance.new("TextLabel")
			TextLabel17.Name = "StatusDot"
			TextLabel17.Size = UDim2.new(0, 18, 0, 18)
			TextLabel17.Position = UDim2.new(1, -50, 0.5, -9)
			TextLabel17.BackgroundTransparency = 1
			TextLabel17.TextSize = 15
			TextLabel17.Font = Enum.Font.GothamBold
			TextLabel17.TextStrokeTransparency = 0.35
			TextLabel17.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel17.Visible = false
			TextLabel17.ZIndex = 54
			TextLabel17.Parent = header2
			local body3 = (nil).body
			local v4072 = nil

			local function v4073(...)
				if not body3.Visible then
					local v4074 = pcall(nil)
					v4074 = v4074 and v4074() or false
					if not v4074 then
						Color3.fromRGB(220, 60, 60)
					end
				end
			end

			RunService.Heartbeat:Connect(_FH_NV(v4073))
		end

		local Booster = v2890("Booster", 240, 0, 170)

		local function v2892()
			local _ = 27407 + (bit32.lrotate(5, 3) + string.byte("\223\140\205\196\183", 1, 2)) + -27669
		end

		v570(Booster.body, "Booster", "", _FH_NV(v2892))

		local function v2893()
			return v565.userEnabled
		end

		v2891(Booster, _FH_NV(v2893))
		local function v2894()
		end
		v571(Booster.body, "Walk Speed", v2893, 100, 29, _FH_NV(v2894), 0.1)
		local function v2895()
		end
		v571(Booster.body, "Jump Power", 50, 100, 50, _FH_NV(v2895), 0.1)
		local LocalPlayer36 = GetService2.LocalPlayer
		local HttpService = game:GetService("HttpService")
		local TeleportService4 = game:GetService("TeleportService")
		local v2896 = v2890("Small Server Finder", 0, 40, 190)
		_FH_yield()

		local function v2897()
			local v4075 = {}
			local v4076 = false
			local v4077, v4078
			local function v4079()
			end
			_FH_NV(v4079)

			local function v4080(...)
				local v4086 = "https://games.roblox.com/v1/games/" ..
					game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
				local v4087 = v4086
				if nil then
					v4087 = v4086
					v4087 = v4086 .. "&cursor=" .. nil
				end

				local function v4088()
					local v4090
					v4090 = not (166 == string.len("\22"))
					if v4090 then
						v4090 = string.unpack("<i8", "\4\1\0\0\0\0\0\0")
					end
					local _
					if v4090 then
						string.len("\\")
					end
					while true do
						v4090 = 468
						string.len("\\")
					end
				end

				local _, v4089
				v4089, _ = pcall(_FH_NV(v4088))
				if v4089 then
					return v4088
				end
				return nil
			end

			v4079 = nil

			local function v4081(...)
				local v4091, v4092
				local v4093 = ""
				local v4094 = 0
				local v4095 = os.clock()
				local v4096
				while true do
					v4096 = v4080(v4091)
					if v4096 and v4096.data then
						for _, v4097 in ipairs(v4096.data) do
							local playing = v4097.playing
							if not (playing == nil or not (playing <= 2) or
								v4097.id == game.JobId) then
								if playing == 1 then
									return v4097
								end
								if v4092 == nil or playing < v4092.playing then
									v4092 = v4097
								end
							end
						end
						if v4096.nextPageCursor then
						end
						v4094 = v4094 + 1
						task.wait(0.15)
						if v4093 == "" or v4093 == nil or 25 <= v4094 then
							break
						end
						v4091 = os.clock() - v4095
						if 20 < v4091 then
							break
						end
					else
						break
					end
				end
				return v4096
			end

			_FH_NV(v4081)

			local function v4082()
				bit32.bnot(135)
				local v4098 = v4076
				if v4098 then
					return
				end
				v4098("Searching...", v558.TextDim)

				local function v4099(...)
					local v4100 = (nil)()
					if not v4075.enabled then
						return
					end
					if v4100 then
						v4078(
							"Joining (" .. tostring(v4100.playing) .. " players)...",
							v558.Green
						)

						local function v4101()
							local v4102
							v4102 = string.len("0") < 802
							if v4102 then
								v4102 = 44
							end
							while true do
								if not v4102 then
									v4102 = string.len("Y")
								end
								v4102 = 44
							end
						end

						pcall(_FH_NV(v4101))
					else
						v4078(
							"No small servers found, retrying...",
							Color3.fromRGB(255, 90, 90)
						)
					end
				end

				task.spawn(v4099)
			end

			local function v4083(...)
				math.modf(3.141592653589793)
				;(nil)()
			end

			_FH_NV(v4083)
			local function v4084()
			end
			_FH_NV(v4084)

			local function v4085()
				local enabled4 = v4075.enabled
				if enabled4 then
					enabled4()
				end
			end

			return (_FH_NV(v4085))
		end

		local v2898 = v2897()
		local Idle = v562(v2896.body, "Idle", 12, v558.TextDim, Enum.Font.Gotham)
		Idle.Size = UDim2.new(1, 0, 0, 16)
		Idle.TextXAlignment = Enum.TextXAlignment.Center
		v2898.attachStatusLabel(Idle)

		local function v2899(...)
			v2898.set(nil)
			v560.set("toggle:Auto Find Small Server", false)
		end

		v570(
			v2896.body,
			"Auto Find Small Server",
			"Hops to a server with 2 or fewer players",
			_FH_NV(v2899)
		)
		v560.set("toggle:Auto Find Small Server", false)

		local function v2900()
			v2898.manualSearch()
		end

		v572(v2896.body, "Search Now", "Manually scan for a small server", _FH_NV(v2900), 30)

		local function v2901(...)
			local v4103, v4104, v4105
			v4105 = bit32.countlz((string.len("\8"))) == 3
			v4105 = v4105 and string.unpack(">i8", "\0\0\0\0\0\0\1\168") or
				string.unpack("<i8", "\224\0\0\0\0\0\0\0")
			local v4106 = LocalPlayer36
			if v4103 then
				v4103 = v4106:FindFirstChild("leaderstats")
				v4104 = v4106
			end
			if v4104 then
				v4104 = v4103:FindFirstChild("Rebirths")
			end
			if not v4104 then
				return nil
			end
			local v4107
			v4107 = v4104.Value == 0
			return v4107
		end

		local v2902 = _FH_NV(v2901)
		local Actions = v2890("Actions", 240, 80, 177)

		local function v2903()
			v567.rejoin()
		end

		v572(Actions.body, "Rejoin", "", _FH_NV(v2903), 30)

		local function v2904()
			v567.kick()
		end

		v572(Actions.body, "Kick Self", "", _FH_NV(v2904), 30)

		local function v2905()
			v567.ragdollSelf()
		end

		v572(Actions.body, "Ragdoll Self", "", _FH_NV(v2905), 30)

		local function v2906()
			v567.reset()
		end

		v572(Actions.body, "Reset Character", "", _FH_NV(v2906), 30)
		if not v564 then
			local function v2907()
				if v557.activate then
				end
				task.wait(0.1)
				v567.ragdollSelf()
			end

			v572(Actions.body, "Ragdoll Tech", "", _FH_NV(v2907), 30)
		end
		local v2908 = v2890("Allow Base", -260, 180, 134)

		local function v2909()
			bit32.rshift(48, 16)
			v573.fire()
		end

		v572(v2908.body, "Allow", "", _FH_NV(v2909))
		local v2910 = {}
		local function v2911()
		end
		v2910.setVisible = _FH_NV(v2911)
		local MinBtn = v2908.header:FindFirstChild("MinBtn")
		if MinBtn then
			MinBtn.Visible = false
		end
		v2908.header:FindFirstChildOfClass("TextLabel").Size = UDim2.new(1, -10, 1, 0)
		local v2912 = {}
		local v2913 = v2890("Quick Actions", -220, 160, 260)
		local header = v2913.header
		header.Size = UDim2.new(1, 0, 0, 36)
		v2913.body.Position = UDim2.new(0, 0, 0, 36)
		local TextLabel15 = header:FindFirstChildOfClass("TextLabel")
		if TextLabel15 then
			TextLabel15.TextSize = 13
		end
		local function v2914()
		end
		v570(v2913.body, "Carpet Speed", "", _FH_NV(v2914))

		local function v2915()
			v567.reset()
		end

		v572(v2913.body, "Reset Character", "", _FH_NV(v2915))

		local function v2916()
			if v557.activate then
				pcall(v557.activate)
			end
			v567.ragdollSelf()
		end

		v572(v2913.body, "Ragdoll Tech", "", _FH_NV(v2916), 30)
		local v2917 = {}
		local function v2918()
		end
		v2917.setVisible = _FH_NV(v2918)
		_FH_yield()

		local function v2919(...)
			local v4108, v4109, v4110, v4111, v4112, v4113
			if not cloneref then
				v4108 = function(...)
					return nil
				end

				_FH_NV(v4108)
				v4109 = nil
				v4110 = nil
				v4111 = nil
				v4112 = nil
				v4113 = nil
			end
			local game35 = game
			local GetService27 = game35.GetService
			v4109 = "Players"
			local v4114 = v4108(GetService27(game35, v4109))
			local game36 = game
			v4109 = game36
			local GetService28 = game36.GetService
			v4110 = "ReplicatedStorage"
			v4109 = false
			v4110 = false
			v4111 = nil
			v4112 = nil
			v4113 = nil

			local function v4115(...)
				local v4118 = v4110
				if v4118 then
					return
				end
				local v4119 = "Datas"
				local FindFirstChild17 = v4118:FindFirstChild(v4119)
				if v4118 then
					v4118 = FindFirstChild17:FindFirstChild("AdminCommands")
					v4119 = FindFirstChild17
				end
				if v4119 then
					v4119 = v4118:FindFirstChild("jumpscare")
				end
				if not v4119 then
					return
				end
				local v4120, v4121
				v4121, v4120 = pcall(require, nil)
				if not (v4121 and v4120 and v4120.effects) then
					return
				end
				local Victim = v4120.effects.Victim

				local function v4122(...)
					local v4123
					v4123 = not (bit32.bnot(227) == 4)
					v4123 = v4123 and 63 or 386
					if v4109 then
						return
					end
					local v4124 = type(nil)
					if v4124 == "function" then
						return v4124()
					end
				end

				_FH_NV(v4122)
			end

			local function v4116(...)
				local v4125
				v4125 = not not false
				v4125 = v4125 and 297 or 487
				local v4126
				v4126 = not (bit32.bnot(198) == 192)
				v4126 = v4126 and string.byte("\250B", 2, nil) or 357
				if not nil then
					return
				end
				if nil then
					local function v4127()
						v4111:Disconnect()
					end

					pcall(_FH_NV(v4127))
				end

				local function v4128()
					local _ = 19371 + (string.byte("\193", 1, 1) - 20 + string.byte("\147\r", 2, 2)) + -19563
					return false, 110, 14
				end

				;(nil).ChildAdded:Connect(v4128)
			end

			local v4117 = {}
			local LocalPlayer41 = v4114.LocalPlayer

			function v4117.set(...)
				local v4129 = nil
				if v4129 then
					v4129 = true
				end
				local v4130 = v4109
				if not v4130 then
					return
				end
				v4130()
				v4130(workspace.CurrentCamera)
				if not v4113 then
					local function v4131()
						local _ = -1073721025 + (bit32.rrotate(string.len("\162"), 2) + 271) + -21069
						local v4134 = v4109
						if v4134 then
							v4134(workspace.CurrentCamera)
						end
					end

					workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(_FH_NV(v4131))
				end
				local v4132 = v4112
				if not v4132 then
					local PlayerGui7 = v4132:FindFirstChildOfClass("PlayerGui")
					if PlayerGui7 then
						local function v4133(...)
							local v4135 = v4109
							if not v4135 then
								return
							end
							if v4135 == "FadedHub" then
								return
							end
							local _ = -1777056 + bit32.rrotate(bit32.lrotate(220, 31), 18) + -25182
							if v4135 then
								local v4136 = nil

								local function v4137()
									if not v4136.Parent then
										return
									end
									for _, v4138 in ipairs(v48(v4136)) do
										if v4138:IsA("Frame") and
											v4138.Size == UDim2.new(1, 0, 1, 0) and
											v4138.BackgroundColor3 == Color3.new(0, 0, 0) then
											local function v4139()
												local _ = 25795 + bit32.lshift(
													bit32.bxor(318, string.byte("\184m", 2, nil), 3),
													2
												) + -27058
												v4136:Destroy()
											end

											pcall(_FH_NV(v4139))
											return
										end
									end
								end

								task.defer(v4137)
							end
						end

						PlayerGui7.ChildAdded:Connect(v4133)
					end
				end
			end

			GetService28(v4109, v4110)
			return v4117
		end

		local v2920 = v2919()
		_FH_yield()

		local function v2921(...)
			local v4140, v4141, v4142
			if not cloneref then
				v4140 = function(...)
					return nil
				end

				_FH_NV(v4140)
				v4141 = nil
				v4142 = nil
			end
			local game37 = game
			v4141 = game37
			v4142 = "Players"
			local v4143 = v4140(game37.GetService(v4141, v4142))
			v4141 = false
			v4142 = nil
			local LocalPlayer42 = v4143.LocalPlayer

			local function v4144(...)
				local _ = -109412 + bit32.rshift(
					bit32.lshift(string.unpack("<i8", "\210\1\0\0\0\0\0\0"), 15),
					(string.unpack(">i8", "\0\0\0\0\0\0\0\7"))
				) + -9803
				local PlayerScripts2 = LocalPlayer42:FindFirstChild("PlayerScripts")
				if not PlayerScripts2 then
					return nil
				end
				if not PlayerScripts2:FindFirstChild("PlayerModule") then
					return nil
				end
				local v4145, v4146
				v4146, v4145 = pcall(require, nil)
				if not (v4146 and v4145) then
					return nil
				end

				local function v4147()
					return v4145:GetControls()
				end

				pcall(_FH_NV(v4147))
				if not v4147 then
					v4147 = nil
				end
				return v4147
			end

			return "set"
		end

		local v2922 = v2921()
		_FH_yield()
		local Defense = v2890("Defense", -260, -40, 160)
		local function v2923()
		end
		v570(Defense.body, "Auto Defense", "", _FH_NV(v2923))
		local body = Defense.body
		local _FH_NV12 = _FH_NV
		local function v2924()
		end
		v570(body, "Anti Intruder", "", _FH_NV12(v2924))

		local function v2925()
			local body4 = Defense.body
			local v4151 = table.create(8)
			local v4152 = { label = "Ragdoll", id = "ragdoll" }
			local v4153 = { label = "Jumpscare", id = "jumpscare" }
			local v4154 = {}
			v4151[1] = {}
			v4151[2] = v4152
			v4151[3] = {}
			v4151[4] = {}
			v4151[5] = {}
			v4151[6] = {}
			v4151[7] = v4153
			v4151[8] = v4154
			local v4155 = {
				main = {},
				menu = {},
				set1 = {},
				set2 = {}
			}

			local function v4156()
				local v4181, v4182, v4183
				v4183, v4182, v4181 = ipairs(body4:GetChildren())
				while true do
					local v4184
					v4181, v4184 = v4183(v4182, v4181)
					if v4181 == nil then
						break
					elseif v4184:IsA("GuiObject") then
					end
				end
				return v4183
			end

			_FH_NV(v4156)

			local function v4157(...)
				local v4185
				v4185 = bit32.bor(
					string.len("\170["),
					string.byte("\182", 1, nil),
					(math.modf(3.141592653589793))
				) < 258
				v4185 = v4185 and 245 or string.len("6\223")
				for _, v4186 in ipairs(body4(nil)) do
					local GuiObject = "GuiObject"
					if v4186:IsA(GuiObject) and not (nil)[v4186] then
						table.insert(v4186, GuiObject)
					end
				end
			end

			_FH_NV(v4157)
			local v4158 = {}

			local function v4159(...)
				local v4187, _, _
				_, _, v4187 = pairs(v4155)
				local v4188 = v4158[nil]
				if not v4188 then
					v4188 = 160
				end
				if Defense.setWidth then
					Defense.setWidth(v4187, false)
					local v4189 = v4188
					local function v4190()
					end
					task.delay(0.05, _FH_NV(v4190))
					local v4191 = v4188

					local function v4192()
						bit32.bnot(584)
						while true do
						end
					end

					task.delay(0.2, _FH_NV(v4192))
				end
			end

			local v4160 = v4157()

			local function v4161()
				v4159("menu")
			end

			v4153(v4154, "Defense Commands", "", _FH_NV(v4161), 28)
			local v4162, v4163, v4164
			v4164, v4163, v4162 = pairs(v4154())
			local v4165 = v4163
			local v4166 = v4162
			local v4167, v4168, v4169, v4170
			while true do
				local _
				v4166, _ = v4164(v4163, v4166)
				v4170 = nil
				v4169 = nil
				v4168 = v4160
				v4167 = v4162
				if v4166 == nil then
					break
				else
					v4162 = v4155.main
					v4165 = v4166
				end
			end
			local v4171 = v4164()
			v4168 = v4171
			v4167 = "← Back"

			local function v4172()
				v4159("main")
			end

			v4171(v4165, v4167, "", _FH_NV(v4172), 28)
			v4167 = "First Defense Commands"

			local function v4173()
				v4159("set1")
			end

			v4171(v4165, v4167, "", _FH_NV(v4173), 30)
			v4167 = "2nd Defense Commands"
			local function v4174()
			end
			v4171(v4165, v4167, "", _FH_NV(v4174), 30)
			v4167 = v4155.menu
			v4171(v4165, v4167)
			local v4175 = {}
			v4167 = {}
			v4167 = {}
			v4167 = nil

			local function v4176(...)
				local v4193
				for _, v4194 in ipairs(v4151) do
					local id = v4194.id
					v4193 = v4193[id]
					if v4193 then
						v4193 = table.insert
						v4193(id, v4194.id)
					end
				end
			end

			v4167 = _FH_NV(v4176)
			local v4177 = {}

			local function v4178(...)
				local v4195
				v4195 = not not false
				v4195 = v4195 and "set2" or "set1"
				local v4196 = v4170()
				local v4197 = ""

				local function v4198()
					v4159("menu")
				end

				local v4199 = _FH_NV(v4198)
				v4196(nil, "← Back", v4197, v4199, 28)
				local v4200, v4201, v4202
				v4202, v4201, v4200 = ipairs(nil)
				local v4203 = v4201
				local v4204 = v4200
				while true do
					local v4205
					v4204, v4205 = v4202(v4201, v4204)
					if v4204 == nil then
						break
					else
						local v4206 = nil
						local v4207 = v4205
						local v4208 = nil
						local v4209 = v4195

						local function v4210(...)
							local v4213 = v4167
							v4213(v4207.id, v4208)
							local v4214 = v4177[v4213]
							local v4215 = v4207.id
							while true do
								v4214 = v4214[v4215]
								if v4214 then
									v4215 = v4214.get()
									if not v4215 then
										break
									end
								else
									break
								end
							end
						end

						v4197 = v4197(v4199, nil .. v4205.label, "", _FH_NV(v4210))
						v4199 = (nil)[v4205.id]
						if v4199 then
							v4199 = v560.get("toggle:" .. nil .. v4205.label, nil)
							if v4199 == nil then
								v4199 = task.defer
								local v4211 = v4197

								local function v4212()
									local _ = -69713 + bit32.rrotate(
										268 + string.unpack(">i8", "\0\0\0\0\0\0\0P"),
										24
									) + -19374
									pcall(v4211.set, true)
								end

								v4199(_FH_NV(v4212))
							end
						end
						v4200 = v4205
						v4203 = v4204
					end
				end
				v4167(v4203, v4200)
				v4169(v4168, v4155[nil])
			end

			local v4179 = { balloon = true }
			v4178("set1", "__GH_DefCmds1", "1: ", v4179)
			local v4180 = { ragdoll = true }
			v4178("set2", "__GH_DefCmds2", "2: ", v4180)
			v4178("main")
		end

		task.spawn(v2925)
		local v2926 = cloneref
		local v2927 = _FH_NV12
		local v2928 = v2924
		local v2929, v2930, v2931, v2932
		if not v2926 then
			local function v2933(...)
				return nil
			end

			v2926 = _FH_NV(v2933)
			v2927 = _FH_NV12
			v2928 = v2924
			v2929 = nil
			v2930 = nil
			v2931 = nil
			v2932 = nil
		end
		v2927 = "Players"
		local v2934 = v2926(game:GetService(v2927))
		local game26 = game
		v2927 = game26
		v2928 = "Workspace"
		local v2935 = v2926(game26.GetService(v2927, v2928))
		local LocalPlayer37 = v2934.LocalPlayer
		v2927 = nil
		v2928 = _FH_NV

		local function v2936(...)
			local v4216 = nil
			local _ = 17188 + bit32.rshift(bit32.bxor((string.len("\134r"))), 2) + -17107
			local v4217 = "PlotSign"
			local v4218 = (nil)(v4216, v4217)
			if v4216 then
				v4216 = v4218:FindFirstChild("SurfaceGui")
				v4217 = v4218
			end
			if v4216 then
				v4217 = v4218.SurfaceGui
				v4216 = v4217:FindFirstChild("Frame")
			end
			if v4217 then
				v4217 = v4216:FindFirstChild("TextLabel")
			end
			if v4217 and v4217.Text ~= "Empty Base" then
				return v4217.Text:gsub("'s [Bb]ase$", ""):gsub("%s+$", "")
			end
			return nil
		end

		v2928 = v2928(v2936)
		v2927 = v2928
		v2928 = nil

		local function v2937(...)
			local v4219 = nil
			local DisplayName5 = LocalPlayer37.DisplayName
			local Plots13 = (nil).FindFirstChild(nil, "Plots")
			if not Plots13 then
				return nil
			end
			local v4220, v4221, v4222
			v4222, v4221, v4220 = ipairs(Plots13:GetChildren())
			while true do
				local _
				v4220, _ = v4222(v4221, v4220)
				if v4220 == nil then
					break
				else
					local v4223 = v2927(v4219)
					if v4223 and v4223 ~= DisplayName5 then
						v4219 = table.insert
						v4219(nil, nil)
					end
				end
			end
			return v4222
		end

		v2928 = _FH_NV(v2937)

		v2929 = function()
			local v4224 = LocalPlayer37.Character
			if v4224 then
				v4224 = LocalPlayer37.Character:FindFirstChild("HumanoidRootPart")
			end
			if not v4224 then
				return nil
			end
			local v4225 = math.huge
			local v4226, v4227, v4228
			v4228, v4227, v4226 = ipairs(v2928())
			while true do
				local v4229
				v4226, v4229 = v4228(v4227, v4226)
				if v4226 == nil then
					break
				else
					local Unlock = v4229:FindFirstChild("Unlock")
					if v4229 then
						v4229 = Unlock:FindFirstChild("Main")
					end
					if v4229 then
						local Magnitude8 = (v4224.Position - v4229.Position).Magnitude
						if Magnitude8 < v4225 then
							v4225 = Magnitude8
						end
					end
				end
			end
			return v4228
		end

		_FH_NV(v2929)
		local v2938 = {}
		v2929 = { yLevel = -2, maxY = 19 }
		v2938[1] = v2929
		v2929 = { yLevel = 15 }
		v2938[2] = v2929
		v2929 = { yLevel = 32 }
		v2938[3] = v2929
		v2929 = nil
		v2930 = _FH_NV

		v2931 = function(...)
			return (nil)()
		end

		v2930 = v2930(v2931)
		v2929 = v2930
		v2930 = nil
		v2931 = _FH_NV

		local function v2939(...)
			local v4230, v4231, v4232, v4233
			v4233, v4232, v4231 = ipairs((nil).GetChildren(nil))
			local v4234
			while true do
				local v4235
				v4231, v4235 = v4233(v4232, v4231)
				if v4231 == nil then
					break
				else
					v4234 = v4235.Name == LocalPlayer37.Name
					if not v4234 then
						v4230 = "Owner"
						local FindFirstChild18 = v4235:FindFirstChild(v4230)
						if FindFirstChild18 then
							local Value = FindFirstChild18.Value
							v4230 = LocalPlayer37.Name
							if Value == v4230 then
								v4234 = true
							end
						end
					end
					if not v4234 then
						local v4236 = v2927(v4230)
						if v4236 then
							v4230 = LocalPlayer37.DisplayName
							if v4236 == v4230 or v4236 == LocalPlayer37.Name then
								v4234 = true
							end
						end
					end
					if v4234 and (nil).IsDescendantOf(nil, v4230) then
						return true
					end
				end
			end
			return false
		end

		v2931 = v2931(v2939)
		v2930 = v2931
		v2931 = nil

		local function v2940(...)
			local v4237, v4238
			for _, v4239 in ipairs(v2934:GetPlayers()) do
				if v4239 ~= v4237 then
					v4237 = v4239.Character
					if v4238 then
						v4238 = v4237:FindFirstChild("HumanoidRootPart")
					end
					if v4238 and math.abs(v4238.Position.Y - nil) <= nil and
						(v4238.Position - (nil).Position).Magnitude <= 60 then
						return true
					end
				end
			end
			return false
		end

		v2931 = _FH_NV(v2940)

		local function v2941(...)
			local v4240 = nil
			local v4241 = type
			local v4242 = fireproximityprompt
			if v4241(v4242) ~= "function" then
				return
			end
			local Character33 = LocalPlayer37.Character
			if v4242 then
				v4242 = Character33:FindFirstChild("HumanoidRootPart")
				v4240 = Character33
			end
			if not v4242 then
				return
			end
			local v4243 = "Plots"
			if not v4240:FindFirstChild(v4243) then
				return
			end
			if not v4243 then
				v4243 = v4242.Position.Y
			end
			local v4244 = nil
			local v4245 = math.huge
			local v4246 = math.huge
			local v4247, v4248, v4249
			v4249, v4248, v4247 = ipairs(v48(nil))
			while true do
				local v4250
				v4247, v4250 = v4249(v4248, v4247)
				if v4247 == nil then
					break
				else
					local ProximityPrompt3 = "ProximityPrompt"
					if v4250:IsA(ProximityPrompt3) and v4250.Enabled and
						(v2929(v4250) and not v2930(v4250, ProximityPrompt3)) then
						local Parent14 = v4250.Parent
						if Parent14 and Parent14:IsA("BasePart") and true then
							local Magnitude9 = (v4242.Position - Parent14.Position).Magnitude
							if math.abs(v4243 - Parent14.Position.Y) <= 5 then
								if (nil .. nil)(Parent14, nil, 5) then
									if Magnitude9 < v4245 then
										v4244 = v4250
										v4245 = Magnitude9
									end
								elseif v4244 == nil and Magnitude9 < v4246 then
									v4246 = Magnitude9
								end
							end
						end
					end
				end
			end
			if not v4249 then
				return
			end
			local MaxActivationDistance3 = v4249.MaxActivationDistance

			local function v4251()
				v4249.MaxActivationDistance = 9999
			end

			pcall(_FH_NV(v4251))
			pcall(fireproximityprompt, v4249)

			local function v4252()
				local function v4253()
				end
				pcall(_FH_NV(v4253))
			end

			task.delay(0.2, v4252)
		end

		local v2942 = { floors = v2938, triggerFloor = v2941 }
		v2932 = v560.get
		v2932 = v2932("ub_horiz", true)

		local function v2943()
			local _ = -167756096 + (bit32.lrotate(
				80,
				(string.unpack("<i8", "\21\0\0\0\0\0\0\0"))
			) - 450) + -15544
			if v2932 then
				return 217, 64
			end
			return 64, 217
		end

		local v2944 = _FH_NV(v2943)
		local v2945, v2946
		v2946, v2945 = v2944()
		v2942.W = v2946
		v2942.H = v2945
		v2942.UBBorderFrame = Instance.new("Frame")
		v2942.UBBorderFrame.Name = "UBGradBorder"
		v2942.UBBorderFrame.Size = UDim2.new(0, v2942.W + 4, 0, v2942.H + 4)
		v2942.UBBorderFrame.Position = UDim2.new(
			0.5,
			-(v2942.W + 4) / 2,
			1,
			-(v2942.H + 4 + 80)
		)
		local UBBorderFrame = v2942.UBBorderFrame
		local v2947 = Color3.fromRGB(255, 255, 255)
		UBBorderFrame.BackgroundColor3 = v2947
		v2942.UBBorderFrame.BackgroundTransparency = 1
		v2942.UBBorderFrame.BorderSizePixel = 0
		v2942.UBBorderFrame.ZIndex = 18
		v2942.UBBorderFrame.Visible = false
		v2942.UBBorderFrame.Parent = v2947
		v87(v2942.UBBorderFrame)
		v561(v2942.UBBorderFrame, 12)
		v69(v2942.UBBorderFrame, 2.5, 0, 135)
		v2942.UBWin = Instance.new("Frame")
		v2942.UBWin.Name = "UnlockBasePanel"
		v2942.UBWin.Size = UDim2.new(0, v2942.W, 0, v2942.H)
		v2942.UBWin.Position = UDim2.new(0.5, -v2942.W / 2, 1, -(v2942.H + 82))
		local UBWin = v2942.UBWin
		local Bg2 = v558.Bg
		UBWin.BackgroundColor3 = Bg2
		v2942.UBWin.BackgroundTransparency = 0.35
		v2942.UBWin.BorderSizePixel = 0
		v2942.UBWin.ZIndex = 19
		v2942.UBWin.Visible = false
		v2942.UBWin.ClipsDescendants = true
		v2942.UBWin.Parent = Bg2
		v87(v2942.UBWin)
		v65(v2942.UBWin, "Bg")
		v561(v2942.UBWin, 10)
		v69(v2942.UBWin, 2.5, 0, 135)
		v2942.UBWin.Active = true
		local v2948 = v560.get("panelpos:UnlockBase", nil)
		if type(v2948) == "table" and v2948.x and v2948.y then
			local v2949 = v2948.xs
			if v2949 == nil then
				v2949 = 0.5
			end
			v2832 = v2948.ys
			if v2832 == nil then
				v2832 = 1
			end
			v2942.UBWin.Position = UDim2.new(v2949, v2948.x, v2832, v2948.y)
			v2942.UBBorderFrame.Position = UDim2.new(v2949, v2948.x - 2, v2832, v2948.y - 2)
		end

		local function v2950(...)
			if type(nil) == "table" and nil and nil then
				v2942.UBWin.Position = UDim2.new
				v2942.UBBorderFrame.Position = UDim2.new
			end
		end

		v547("panelpos:UnlockBase", _FH_NV(v2950))
		local v2951 = Instance.new("Frame")
		v2951.Size = UDim2.new(1, 0, 1, 0)
		v2951.Position = UDim2.new(0, 0, 0, 0)
		v2951.BackgroundTransparency = 1
		v2951.ZIndex = 19
		v2951.Parent = v2942.UBWin
		v568(v2951, 10, 10, 10, 10)
		local v2952 = Instance.new("UIGridLayout")
		UDim2.new(0, 44, 0, 44)
		local v2953
		if v2932 then
			UDim2.new(0, 7, 0, 0)
			v2953 = v2944
		else
			UDim2.new(0, 0, 0, 7)
			v2953 = v2944
		end
		local v2954 = v2952

		local function v2955()
			local v4254
			v4254 = not not true
			v4254 = v4254 and string.len("") or string.len("\218\250")
			bit32.lrotate(364, 10)
			local _, v4255
			v4255, _ = v2953()
			v2942.W = v4255
			if v2932 then
				UDim2.new(0, 7, 0, 0)
			else
				UDim2.new(0, 0, 0, 7)
			end
			UDim2.new(0, v2942.W, 0, v2942.H)
			UDim2.new(0, v2942.W + 4, 0, v2942.H + 4)
			local Position6 = v2942.UBWin.Position
			UDim2.new(
				Position6.X.Scale,
				Position6.X.Offset - 2,
				Position6.Y.Scale,
				Position6.Y.Offset - 2
			)
		end

		local v2956 = _FH_NV(v2955)
		local v2957 = {}
		local TextButton12 = Instance.new("TextButton")
		TextButton12.BackgroundColor3 = v558.Card
		TextButton12.BorderSizePixel = 0
		local v2958 = v2932
		if v2958 then
			v2958 = "↔"
		end
		local v2959 = v2956
		local v2960 = v2958
		local v2961 = v2832
		if not v2958 then
			v2959 = v2956
			v2960 = "↕"
			v2961 = v2832
		end
		TextButton12.Text = v2960
		TextButton12.TextSize = 16
		v2960 = Enum
		v2960 = v2960.Font
		v2960 = v2960.GothamBold
		TextButton12.Font = v2960
		v2960 = v558.White
		TextButton12.TextColor3 = v2960
		TextButton12.AutoButtonColor = false
		TextButton12.ZIndex = 22
		TextButton12.Parent = v2951
		v2960 = v561
		v2961 = 8
		v2960(TextButton12, v2961)
		v2960 = v574
		v2961 = v558.Line
		v2960(TextButton12, v2961, 1)
		v2960 = false

		local function v2962()
			bit32.bnot(104)
			if v2960 then
				return
			end
			local v4256 = v2932
			if v4256 then
				v4256 = "↔"
			end
			v2959()
			v560.set("ub_horiz", v2932)
			local function v4257()
			end
			task.delay(0.35, _FH_NV(v4257))
		end

		v2961 = TextButton12.Activated
		local v2963 = v2961
		v2961 = v2961.Connect
		v2961(v2963, v2962)
		v2961 = nil

		local function v2964(...)
			if nil == Enum.UserInputType.Touch then
			end
		end

		TextButton12.InputBegan:Connect(_FH_NV(v2964))

		local function v2965()
			if (nil).UserInputType == Enum.UserInputType.Touch and v2961 then
				local v4258 = v2961
				if ((nil).Position - v4258).Magnitude < 12 then
					v4258()
				end
			end
		end

		TextButton12.InputEnded:Connect(_FH_NV(v2965))
		v2961 = table
		v2961 = v2961.insert
		local v2966 = { btn = TextButton12, fire = v2962 }
		v2961(v2957, v2966)
		v2961 = { "1", "2", "3" }
		local v2967 = 0
		local v2968, v2969, v2970, v2971
		while true do
			v2967 = v2967 + 1
			v2971 = v2967
			v2970 = 3
			if v2967 <= 3 then
				v2968 = v2951
				local TextButton13 = Instance.new("TextButton", v2968)
				TextButton13.BackgroundColor3 = v558.Card
				TextButton13.Text = v2961[v2967]
				TextButton13.Font = Enum.Font.GothamBlack
				TextButton13.TextSize = 20
				TextButton13.TextColor3 = v558.White
				TextButton13.AutoButtonColor = false
				TextButton13.ZIndex = 21
				v2968 = TextButton13
				v561(v2968, 8)
				v2968 = TextButton13
				v2969 = 1
				local v2972 = v574(v2968, v558.Line, v2969)
				v2968 = TextButton13.MouseEnter
				local v2973 = v2968
				v2968 = v2968.Connect
				v2969 = _FH_NV
				local v2974 = TextButton13
				local v2975 = v2972

				local function v2976()
					({}).BackgroundColor3 = v558.CardHover
					v2975.Color = v558.White
				end

				v2968(v2973, v2969(v2976))
				v2968 = TextButton13.MouseLeave
				local v2977 = v2968
				v2968 = v2968.Connect
				v2969 = _FH_NV
				local v2978 = TextButton13
				local v2979 = v2972

				local function v2980()
					({}).BackgroundColor3 = v558.Card
					v2979.Color = v558.Line
				end

				v2968(v2977, v2969(v2980))
				v2968 = false
				local v2981 = v2967
				local v2982 = TextButton13
				local v2983 = v2972

				local function v2984(...)
					local v4259, v4260
					local v4261 = v2968
					if v4261 then
						return
					end
					local v4262 = v2938[v4261]
					local spawn15 = task.spawn
					if v4259 then
						v4259 = v4262.yLevel
					end
					if v4260 then
						v4260 = v4262.maxY
					end
					spawn15(nil, v4259, v4260)
					v68(nil, v4259, {})

					local function v4263()
						({}).BackgroundColor3 = v558.Card
						v2983.Color = v558.Line
					end

					task.delay(0.4, _FH_NV(v4263))
				end

				v2969 = TextButton13.Activated
				local v2985 = v2969
				v2969 = v2969.Connect
				v2969(v2985, v2984)
				v2969 = nil

				local function v2986(...)
					if nil == Enum.UserInputType.Touch then
					end
				end

				TextButton13.InputBegan:Connect(_FH_NV(v2986))
				local v2987 = v2984

				local function v2988(...)
					if nil == Enum.UserInputType.Touch and v2969 then
						local v4264 = v2969
						if (nil - v4264).Magnitude < 12 then
							v4264()
						end
					end
				end

				TextButton13.InputEnded:Connect(_FH_NV(v2988))
				v2969 = table
				v2969 = v2969.insert
				local v2989 = { btn = TextButton13, fire = v2984 }
				v2969(v2957, v2989)
			else
				break
			end
		end
		v2971 = nil
		v2970 = _FH_NV

		local function v2990()
			local Position7 = v2942.UBWin.Position
			local set8 = v560.set
			local v4265 = {
				xs = Position7.X.Scale,
				x = Position7.X.Offset,
				ys = Position7.Y.Scale,
				y = Position7.Y.Offset
			}
			set8("panelpos:UnlockBase", v4265)
		end

		v2970 = v2970(v2990)
		v2971 = v2970
		v2970 = v2942.UBWin
		v2970 = v2970.InputBegan
		local v2991 = v2970
		v2970 = v2970.Connect

		local function v2992(...)
			local v4266 = nil
			local v4267 = v93
			if v4267 then
				return
			end
			local _leave58 = false
			if v4267 ~= Enum.UserInputType.MouseButton1 then
				v4266 = Enum.UserInputType.Touch
				if nil ~= v4266 then
					_leave58 = true
				end
			end
			if not _leave58 then
				local Touch = Enum.UserInputType.Touch
				if v4267 == Touch then
					local v4268 = v4267.X
					local v4269 = Touch.Y
					local v4270, v4271, v4272
					v4272, v4271, v4270 = ipairs(v4266)
					while true do
						local v4273
						v4270, v4273 = v4272(v4271, v4270)
						if v4270 == nil then
							_leave58 = true
							break
						else
							local AbsolutePosition6 = v4273.btn.AbsolutePosition
							local AbsoluteSize17 = v4273.btn.AbsoluteSize
							if AbsolutePosition6.X <= v4268 and
								v4268 <= AbsolutePosition6.X + AbsoluteSize17.X and
								(AbsolutePosition6.Y <= v4269 and
									v4269 <= AbsolutePosition6.Y + AbsoluteSize17.Y) then
								return
							end
						end
					end
				end
			end
		end

		v2970(v2991, _FH_NV(v2992))
		v2970 = table
		v2970 = v2970.insert

		local function v2993()
			v2942.dragging = false
		end

		v2970(_G._FH_DragClearers, _FH_NV(v2993))
		v2970 = v2942.UBWin
		v2970 = v2970.InputEnded
		local v2994 = v2970
		v2970 = v2970.Connect

		local function v2995(...)
			if (nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch) and v2942.dragging then
				v2942.dragging = false
				v2971()
			end
		end

		v2970(v2994, _FH_NV(v2995))
		v2970 = UserInputService.InputEnded
		local v2996 = v2970
		v2970 = v2970.Connect

		local function v2997(...)
			if (nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch) and v2942.dragging then
				v2942.dragging = false
				v2971()
			end
		end

		v2970(v2996, _FH_NV(v2997))
		v2970 = UserInputService.InputChanged
		local v2998 = v2970
		v2970 = v2970.Connect

		local function v2999(...)
			if v93 then
				return
			end
			local dragging = v2942.dragging
			if dragging and
				(dragging == Enum.UserInputType.MouseMovement or
					nil == Enum.UserInputType.Touch) then
				local v4274 = dragging - v2942.dragStart
				if not v2942.dragMoved then
					if v4274.Magnitude < 8 then
						return
					end
					return
				end
				local v4275 = UDim2.new(
					v2942.panelStart.X.Scale,
					v2942.panelStart.X.Offset + v4274.X,
					v2942.panelStart.Y.Scale,
					v2942.panelStart.Y.Offset + v4274.Y
				)
				v2942.UBWin.Position = v4275
				v2942.UBBorderFrame.Position = UDim2.new(
					v4275.X.Scale,
					v4275.X.Offset - 2,
					v4275.Y.Scale,
					v4275.Y.Offset - 2
				)
			end
		end

		v2970(v2998, _FH_NV(v2999))
		v2970 = nil
		local function v3000()
		end
		UserInputService.InputBegan:Connect(_FH_NV(v3000))

		local function v3001(...)
			local Touch2 = Enum.UserInputType.Touch
			if nil ~= Touch2 then
				return
			end
			if v2970 then
				local v4276 = v2970
				if (Touch2 - v4276.pos).Magnitude < 16 then
					v4276.fire()
				end
			end
		end

		UserInputService.InputEnded:Connect(_FH_NV(v3001))
		v2970 = v2942.UBWin
		v2912.panel = v2970
		v2970 = v2942.UBWin
		local v3002 = v2970
		v2970 = v2970.GetPropertyChangedSignal
		v2970 = v2970(v3002, "Visible")
		local v3003 = v2970
		v2970 = v2970.Connect

		local function v3004()
			if not v2942.UBWin.Visible then
				return
			end

			local function v4277()
				local AbsoluteSize18 = v559.AbsoluteSize
				if AbsoluteSize18.X < 1 then
					return
				end
				local AbsolutePosition7 = v2942.UBWin.AbsolutePosition
				local AbsoluteSize19 = v2942.UBWin.AbsoluteSize
				local v4278 = math.clamp(
					AbsolutePosition7.X,
					4,
					math.max(4, AbsoluteSize18.X - AbsoluteSize19.X - 4)
				)
				local clamp16 = math.clamp
				local v4279 = AbsolutePosition7.Y
				local max12 = math.max
				local v4280 = AbsoluteSize18.Y
				local v4281 = AbsoluteSize19.Y
				if 0.5 < math.abs(v4278 - AbsolutePosition7.X) or
					0.5 < math.abs(clamp16(v4279, 4, max12(4, v4280 - v4281 - 4)) - AbsolutePosition7.Y) then
					UDim2.new(0, 4, 0, v4281)
					local Position8 = v2942.UBWin.Position
					UDim2.new(
						Position8.X.Scale,
						Position8.X.Offset - 2,
						Position8.Y.Scale,
						Position8.Y.Offset - 2
					)
					v2971()
				end
			end

			task.defer(_FH_NV(v4277))
		end

		v2970(v3003, v3004)

		local function v3005()
			local v4282 = v548
			if not v4282 then
				v4282 = v549
			end
			return v4282
		end

		v2891(Defense, _FH_NV(v3005))
		v2927 = 196
		local v3006 = v2890("Command Cooldowns", -260, 60, v2927)
		local v3007 = cloneref
		if not v3007 then
			local function v3008(...)
				return nil
			end

			v3007 = _FH_NV(v3008)
		end
		local game27 = game
		v2927 = game27
		v2928 = "Players"
		local LocalPlayer38 = v3007(game27.GetService(v2927, v2928)).LocalPlayer
		v2927 = table.create(9)
		v2928 = { name = "rocket", display = "Rocket", inGame = "rocket" }
		local v3009 = { name = "ragdoll", display = "Ragdoll", inGame = "ragdoll" }
		local v3010 = { name = "balloon", display = "Balloon", inGame = "balloon" }
		v2929 = { name = "inverse", display = "Inverse", inGame = "inverse" }
		v2930 = { name = "jail", display = "Jail", inGame = "jail" }
		v2931 = { name = "control", display = "Control", inGame = "control" }
		local v3011 = { name = "tiny", display = "Titty", inGame = "tiny" }
		local v3012 = { name = "jumpscare", display = "Jumpscare", inGame = "jumpscare" }
		local v3013 = { name = "morph", display = "Morph", inGame = "morph" }
		v2927[1] = v2928
		v2927[2] = v3009
		v2927[3] = v3010
		v2927[4] = v2929
		v2927[5] = v2930
		v2927[6] = v2931
		v2927[7] = v3011
		v2927[8] = v3012
		v2927[9] = v3013
		v2928 = Color3
		v2928 = v2928.fromRGB
		v2929 = 80
		v2928 = v2928(80, 200, v2929)
		v2929 = 100
		v2930 = 100
		local v3014 = Color3.fromRGB(255, v2929, v2930)
		v2929 = 200
		v2930 = 60
		v2931 = 60
		local v3015 = Color3.fromRGB(v2929, v2930, v2931)
		v2929 = {}
		v2930 = ipairs
		v2931 = v2927
		local v3016, v3017, v3018
		v3018, v3017, v3016 = v2930(v2931)
		v2930 = v3018
		v2931 = v3017
		local v3019 = v2930
		local v3020 = v2931
		while true do
			local v3021
			v3016, v3021 = v3019(v3020, v3016)
			if v3016 == nil then
				break
			else
				v2931 = v3016
				local Frame34 = Instance.new("Frame")
				v2932 = 26
				Frame34.Size = UDim2.new(1, -8, 0, v2932)
				Frame34.BackgroundColor3 = v558.Card
				Frame34.BorderSizePixel = 0
				Frame34.ZIndex = 52
				Frame34.Parent = v3006.body
				v561(Frame34, 6)
				v2932 = 0.3
				v574(Frame34, v558.Line, 1, v2932)
				local Frame35 = Instance.new("Frame")
				v2932 = 1
				v2953 = -8
				Frame35.Size = UDim2.new(0, 3, v2932, v2953)
				v2932 = 0
				v2953 = 4
				Frame35.Position = UDim2.new(0, 0, v2932, v2953)
				Frame35.BackgroundColor3 = v2928
				Frame35.BorderSizePixel = 0
				Frame35.ZIndex = 53
				Frame35.Parent = Frame34
				v561(Frame35, 2)
				local display = v3021.display
				v2932 = 11
				v2953 = v558.Text
				local v3022 = v562(Frame34, display, v2932, v2953, Enum.Font.GothamBold)
				v2932 = -76
				v2953 = 1
				v3022.Size = UDim2.new(1, v2932, v2953, 0)
				v2932 = 12
				v2953 = 0
				v3022.Position = UDim2.new(0, v2932, v2953, 0)
				v3022.TextYAlignment = Enum.TextYAlignment.Center
				v3022.ZIndex = 53
				local Frame36 = Instance.new("Frame")
				v2932 = 0
				v2953 = 10
				Frame36.Size = UDim2.new(v2932, v2953, 0, 10)
				v2932 = 1
				v2953 = -16
				Frame36.Position = UDim2.new(v2932, v2953, 0.5, -5)
				Frame36.BackgroundColor3 = v2928
				Frame36.BorderSizePixel = 0
				Frame36.ZIndex = 54
				Frame36.Parent = Frame34
				v2932 = Frame36
				v2953 = 5
				v561(v2932, v2953)
				v2932 = Frame34
				v2953 = ""
				v2959 = Enum
				v2959 = v2959.Font
				v2959 = v2959.GothamBold
				local v3023 = v562(v2932, v2953, 11, v3014, v2959, Enum.TextXAlignment.Right)
				v2932 = UDim2
				v2932 = v2932.new
				v2953 = 0
				v2959 = 0
				v2932 = v2932(v2953, 40, 1, v2959)
				v3023.Size = v2932
				v2932 = UDim2
				v2932 = v2932.new
				v2953 = 1
				v2951 = -58
				v2952 = 0
				v2959 = 0
				v2932 = v2932(v2953, v2951, v2952, v2959)
				v3023.Position = v2932
				v2932 = Enum
				v2932 = v2932.TextYAlignment
				v2932 = v2932.Center
				v3023.TextYAlignment = v2932
				v3023.ZIndex = 53
				v2932 = v3021.name
				v2953 = { status = v3023, bar = Frame35, dot = Frame36 }
				v2929[v2932] = v2953
			end
		end
		v2930 = task
		v2930 = v2930.spawn
		local v3024 = v2927
		local v3025 = v2929
		local v3026 = v2928

		v2931 = function()
			while true do
				task.wait(0.3)
				if v3006.panel.Visible then
					local function v4283(...)
						local v4284, v4285, v4286, v4287
						local v4288 = LocalPlayer38
						local v4289 = "PlayerGui"
						local FindFirstChild19 = v4288:FindFirstChild(v4289)
						if v4288 then
							v4284 = "AdminPanel"
							v4288 = FindFirstChild19:FindFirstChild(v4284)
							v4289 = FindFirstChild19
						end
						if v4289 then
							v4289 = v4288:FindFirstChild("AdminPanel")
							v4284 = v4288
						end
						if v4284 then
							v4284 = v4289:FindFirstChild("Content")
						end
						if v4284 then
							v4285 = "ScrollingFrame"
							v4284 = v4284:FindFirstChild(v4285)
						end
						if not v4284 then
							return
						end
						for _, v4290 in ipairs(v4285) do
							local v4291 = v3025[v4290.name]
							if v4291 then
								local v4292 = false
								local v4293 = ""
								if v4286 then
									local FindFirstChild20 = v4284.FindFirstChild
									v4287 = v4290.inGame
									v4286 = FindFirstChild20(v4284, v4287)
								end
								if v4286 then
									local Timer = v4286:FindFirstChild("Timer")
									if Timer then
										v4287 = Timer.Visible
										if v4287 then
											v4292 = true
											v4287 = not (Timer.Text == "")
											v4287 = v4287 and Timer.Text or "..."
											v4293 = v4287
										end
									else
										v4287 = v4286
									end
								end
								if not v4292 then
									local v4294 = _G._FH_AdminLastFired
									if not v4294 then
										v4294 = {}
									end
									local v4295 = v4294[v4290.name]
									if not v4295 then
										v4295 = 0
									end
									local v4296 = _G._FH_CmdCooldowns
									if not v4296 then
										v4296 = {}
									end
									v4287 = v4296[v4290.name]
									if not v4287 then
										v4287 = 0
									end
									local v4297 = v4287 - (tick() - v4295)
									if 0 < v4297 then
										v4292 = true
										v4293 = string.format("%ds", math.ceil(v4297))
									end
								end
								if v4292 then
									v4291.status.Text = v4293
									v4291.status.TextColor3 = v4287
									v4287 = v3015
									v4291.bar.BackgroundColor3 = v4287
									v4291.dot.BackgroundColor3 = v4287
								else
									v4291.status.Text = ""
									v4291.bar.BackgroundColor3 = v4287
									v4291.dot.BackgroundColor3 = v4287
								end
							end
						end
					end

					pcall(_FH_NV(v4283))
				end
			end
		end

		v2930(v2931)
		_FH_yield()

		local function v3027()
			local v4298 = "ReplicatedStorage"
			local GetService29 = game:GetService(v4298)
			local v4299 = {}
			v4298 = nil

			local function v4300(...)
				if v4298 == nil then
					local function v4316()
						return require(GetService29:WaitForChild("Shared"):WaitForChild("Animals"))
					end

					pcall(_FH_NV(v4316))
				end
				local v4317 = v4298
				if not v4317 then
					v4317 = nil
				end
				return v4317
			end

			local v4301 = 12
			Color3.fromRGB(12, v4301, 14)
			v4301 = table.create(5)
			local v4302 = 237
			Color3.fromRGB(v4302, 178, 0)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(237, 194, 86)
			Color3.fromRGB(215, 111, 1)
			Color3.fromRGB(139, 74, 0)
			Color3.fromRGB(255, 164, 164)
			local fromRGB = Color3.fromRGB
			v4301 = table.create(5)
			v4302 = 37
			Color3.fromRGB(v4302, 196, 254)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(116, 212, 254)
			Color3.fromRGB(28, 137, 254)
			Color3.fromRGB(21, 64, 254)
			Color3.fromRGB(160, 162, 254)
			local fromRGB2 = Color3.fromRGB
			fromRGB(255, 244, 190)
			v4301 = table.create(5)
			v4302 = 145
			Color3.fromRGB(v4302, 0, 27)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(154, 94, 100)
			Color3.fromRGB(75, 0, 7)
			Color3.fromRGB(72, 0, 2)
			Color3.fromRGB(121, 112, 112)
			local fromRGB3 = Color3.fromRGB
			fromRGB2(176, 255, 252)
			v4301 = table.create(5)
			v4302 = 255
			Color3.fromRGB(v4302, 105, 180)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(255, 182, 193)
			Color3.fromRGB(200, 50, 150)
			Color3.fromRGB(255, 20, 147)
			Color3.fromRGB(255, 200, 220)
			local fromRGB4 = Color3.fromRGB
			fromRGB3(255, 152, 154)
			v4301 = table.create(5)
			v4302 = 200
			Color3.fromRGB(v4302, 50, 0)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(255, 100, 0)
			Color3.fromRGB(150, 20, 0)
			Color3.fromRGB(100, 10, 0)
			Color3.fromRGB(255, 160, 0)
			local fromRGB5 = Color3.fromRGB
			fromRGB4(255, 240, 245)
			v4301 = table.create(5)
			v4302 = 60
			Color3.fromRGB(v4302, 0, 120)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(100, 0, 180)
			Color3.fromRGB(30, 0, 80)
			Color3.fromRGB(180, 0, 255)
			Color3.fromRGB(80, 0, 160)
			local fromRGB6 = Color3.fromRGB
			fromRGB5(255, 220, 100)
			v4301 = table.create(5)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(20, 20, 28)
			Color3.fromRGB(230, 230, 240)
			Color3.fromRGB(230, 230, 240)
			Color3.fromRGB(128, 128, 128)
			local fromRGB7 = Color3.fromRGB
			fromRGB6(200, 150, 255)
			v4301 = table.create(5)
			v4302 = 100
			Color3.fromRGB(v4302, 255, 0)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(150, 255, 50)
			Color3.fromRGB(50, 200, 0)
			Color3.fromRGB(0, 150, 0)
			Color3.fromRGB(200, 255, 100)
			local fromRGB8 = Color3.fromRGB
			fromRGB7(24, 24, 30)
			v4301 = table.create(5)
			v4302 = 255
			Color3.fromRGB(v4302, 23, 23)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(180, 0, 0)
			Color3.fromRGB(120, 0, 0)
			Color3.fromRGB(80, 0, 0)
			Color3.fromRGB(255, 100, 100)
			local fromRGB9 = Color3.fromRGB
			fromRGB8(230, 255, 180)
			v4301 = table.create(5)
			v4302 = 255
			Color3.fromRGB(v4302, 215, 0)
			v4302 = Color3
			v4302 = v4302.fromRGB
			v4302 = v4302(255, 255, 200)
			Color3.fromRGB(200, 160, 0)
			Color3.fromRGB(255, 240, 150)
			local fromRGB10 = Color3.fromRGB
			fromRGB9(255, 180, 180)
			v4301 = "ApplyMutation"
			local v4303 = {}
			v4301 = nil

			v4302 = function(...)
				for _, v4360 in ipairs((nil).GetChildren(nil)) do
					if v4360:IsA("BasePart") or v4360:IsA("MeshPart") or v4360:IsA("Model") then
						for _, v4361 in ipairs(v4360:GetChildren()) do
							if v4361:IsA("Attachment") then
								local v4362 = (nil).FindFirstChild(nil, v4361.Name, true)
								if v4362 and v4362:IsA("Attachment") then
									Instance.new("RigidConstraint")
								end
							end
						end
					end
				end
			end

			_FH_NV(v4302)

			local function v4304(...)
				for _, v4363 in ipairs(v48(nil)) do
					if v4363:IsA("Attachment") then
						local v4364 = (nil).FindFirstChild(nil, v4363.Name, true)
						if v4364 and v4364:IsA("Attachment") then
							local v4365 = v4364.WorldCFrame * v4363.WorldCFrame:Inverse()
							if (nil).IsA(nil, "Model") then
								local v4366 = nil

								local function v4367(...)
									v4366:PivotTo(nil * v4366:GetPivot())
								end

								pcall(_FH_NV(v4367))
							elseif (nil).IsA(nil, "BasePart") then
							end
							return true
						end
					end
				end
				return false
			end

			v4302 = nil

			local function v4305(...)
				for _, v4368 in ipairs(v48(nil)) do
					if v4368:IsA("BasePart") then
					end
				end
				if (nil).IsA(nil, "BasePart") then
				end
			end

			_FH_NV(v4305)

			local function v4306(...)
				local v4369 = nil
				local v4370 = typeof(nil)
				if v4370 == "table" then
					local v4371, v4372
					v4370, v4372, v4371 = pairs(nil)
					while true do
						local _
						v4371, _ = v4370(v4372, v4371)
						if v4371 == nil then
							break
						elseif type(v4371) == "number" then
							tostring(v4369)
						else
							tostring(v4371)
							v4369 = v4371
						end
					end
				end
				return v4370
			end

			_FH_NV(v4306)
			local v4307 = _G._FH_TEMPLATE_INDEX
			fromRGB10(255, 250, 220)
			if not v4307 then
				v4307 = {}
			end
			local _FH_TEMPLATE_INDEX_BUILT = _G._FH_TEMPLATE_INDEX_BUILT
			local v4308 = _FH_TEMPLATE_INDEX_BUILT
			if not _FH_TEMPLATE_INDEX_BUILT then
				v4308 = false
			end
			local v4309 = v4307

			local function v4310()
				if v4308 then
					return
				end

				local function v4403(...)
					local v4404 = GetService29:FindFirstChild("Models")
					if v4404 then
						v4404 = GetService29.Models:FindFirstChild("Animals")
					end
					if not v4404 then
						return
					end
					for _, v4405 in ipairs(v4404:GetChildren()) do
						if v4405:IsA("Model") and v4309[string.lower(v4405.Name)] == nil then
						end
					end
				end

				pcall(_FH_NV(v4403))
			end

			local v4311 = {}
			local v4312 = v4307
			local v4313 = {}

			local function v4314(...)
				local v4414 = v4313[nil]
				local v4415 = v4414
				local v4416
				if v4414 ~= nil then
					v4416 = not (v4313[nil] == false)
					if not v4416 then
						v4416 = nil
					end
					return v4416
				end
				v4415 = false
				local v4417 = nil

				local function v4418(...)
					local v4428 = GetService29.Images.Animals[nil]
					local v4429 = v4428.Value
					if not v4429 then
						v4429 = v4428.Image
					end
				end

				pcall(_FH_NV(v4418))
				if not v4415 then
					local v4419 = nil

					local function v4420(...)
						local v4430 = GetService29.Icons.Animals[nil]
						local v4431 = v4430.Value
						if not v4431 then
							v4431 = v4430.Image
						end
					end

					pcall(_FH_NV(v4420))
				end
				if not v4415 then
					local v4421 = nil

					local function v4422(...)
						local v4432 = GetService29.UI.Brainrots[nil]
						local v4433 = v4432.Value
						if not v4433 then
							v4433 = v4432.Image
						end
					end

					pcall(_FH_NV(v4422))
				end
				if not v4415 then
					local v4423 = nil
					local function v4424()
					end
					pcall(_FH_NV(v4424))
				end
				if not v4415 then
					local v4425 = nil

					local function v4426(...)
						local v4434 = GetService29.Models.Animals[nil]
					end

					pcall(_FH_NV(v4426))
				end
				v4313[nil] = v4415
				local v4427
				v4427 = not (v4415 == false)
				if not v4427 then
					v4427 = nil
				end
				return v4427
			end

			_FH_NV(v4314)
			local v4315 = {
				Gold = Color3.fromRGB(237, 178, 0),
				Diamond = Color3.fromRGB(37, 196, 254),
				Rainbow = Color3.fromRGB(255, 100, 200),
				Galaxy = Color3.fromRGB(100, 0, 180),
				Bloodrot = Color3.fromRGB(145, 0, 27),
				Candy = Color3.fromRGB(255, 105, 180),
				Lava = Color3.fromRGB(200, 50, 0),
				YinYang = Color3.fromRGB(230, 230, 240),
				Radioactive = Color3.fromRGB(100, 255, 0),
				Cursed = Color3.fromRGB(255, 23, 23),
				Divine = Color3.fromRGB(255, 215, 0),
				Cyber = Color3.fromRGB(62, 155, 255)
			}
			return "makePngIcon"
		end

		local v3028 = v3027()
		v2927 = -280
		v2928 = 110
		local v3029 = v564
		v3029 = v3029 and 0.82 or 1
		local v3030 = v2890("Steal Priority", v2927, v2928, 234, v3029)
		v2927 = "priority_set"
		v2928 = nil
		local v3031 = v560.get(v2927, v2928)
		v2927 = type
		v2928 = v3031
		v2927 = v2927(v2928)
		if v2927 == "table" then
			v2927 = pairs
			v2928 = v3031
			local v3032, v3033, v3034
			v3034, v3033, v3032 = v2927(v2928)
			v2927 = v3034
			v2928 = v3033
			local v3035 = v2927
			local v3036 = v2928
			while true do
				local v3037
				v3032, v3037 = v3035(v3036, v3032)
				if v3032 == nil then
					break
				else
					v2928 = v3032
					if v3037 then
						v2842.priority[v2928] = true
						break
					end
				end
			end
		end
		v2927 = game
		v2928 = v2927
		v2927 = v2927.GetService
		v2927 = v2927(v2928, "ReplicatedStorage")
		v2928 = nil
		local v3038 = v2927

		v2929 = function(...)
			require((nil).WaitForChild(nil, "Shared"):WaitForChild("Animals"))
		end

		pcall(_FH_NV(v2929))
		local v3039 = _G._FH_TEMPLATE_INDEX
		if not v3039 then
			v3039 = {}
		end
		v2929 = _G
		v2929 = v2929._FH_TEMPLATE_LIST
		if not v2929 then
			v2929 = {}
		end
		v2930 = _G
		v2930 = v2930._FH_TEMPLATE_INDEX_BUILT
		local v3040 = v2951
		local v3041 = v2952
		if not v2930 then
			v2930 = false
			v3040 = v2951
			v3041 = v2952
		end
		local v3042 = v2929
		local v3043 = v3039
		local v3044 = v2927

		v2931 = function(...)
			local v4474 = nil
			local v4475 = v2930
			if v4475 and 0 < #v4475 then
				return
			end
			if not v2930 then
				local function v4476(...)
					local v4477 = v3044:FindFirstChild("Models")
					if v4477 then
						v4477 = v3044.Models:FindFirstChild("Animals")
					end
					if not v4477 then
						return
					end
					for _, v4478 in ipairs(v4477:GetChildren()) do
						if v4478:IsA("Model") and v3043[string.lower(v4478.Name)] == nil then
						end
					end
				end

				pcall(_FH_NV(v4476))
				return
			end
			for _, _ in pairs(nil) do
				v4474 = #v4474 + 1
			end
		end

		local v3045 = {}
		local v3046 = v2927
		local v3047 = v2931
		local v3048 = v3039
		local v3049 = v2929
		local v3050 = v2927

		local function v3051(...)
			local v4491 = nil
			if tonumber(nil) then
			end
			local v4492 = { "", "K", "M" }
			local v4493 = "B"
			v4492[4] = v4493
			v4492[5] = "T"
			v4492[6] = "Qa"
			v4492[7] = "Qi"
			local v4494 = 1
			while 1000 <= v4491 and v4494 < #v4492 do
				v4491 = v4491 / 1000
				v4494 = v4494 + 1
			end
			local format3 = string.format
			local v4495
			v4495 = v4494 == 1
			v4495 = v4495 and "%d%s" or "%.1f%s"
			return format3(v4495, v4493, v4492[v4494])
		end

		_FH_NV(v3051)
		local body2 = v3030.body
		v2932 = 10
		v2953 = v558.TextMute
		v3040 = Enum
		v3040 = v3040.Font
		v3040 = v3040.Gotham
		local v3052 = v562(body2, "tap an animal to target it", v2932, v2953, v3040)
		v2932 = -4
		v2953 = 0
		v3040 = 14
		v3052.Size = UDim2.new(1, v2932, v2953, v3040)
		v3052.TextXAlignment = Enum.TextXAlignment.Center
		v3052.ZIndex = 52
		local ScrollingFrame2 = Instance.new("ScrollingFrame")
		v2932 = 1
		v2953 = -4
		v3040 = 0
		v3041 = 230
		ScrollingFrame2.Size = UDim2.new(v2932, v2953, v3040, v3041)
		ScrollingFrame2.BackgroundTransparency = 1
		ScrollingFrame2.BorderSizePixel = 0
		ScrollingFrame2.ScrollBarThickness = 3
		ScrollingFrame2.ScrollBarImageColor3 = v558.White
		v2932 = 0
		v2953 = 0
		v3040 = 0
		v3041 = 0
		ScrollingFrame2.CanvasSize = UDim2.new(v2932, v2953, v3040, v3041)
		ScrollingFrame2.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ScrollingFrame2.ScrollingDirection = Enum.ScrollingDirection.Y
		ScrollingFrame2.ZIndex = 52
		ScrollingFrame2.Parent = v3030.body
		v2932 = "UIListLayout"
		local v3053 = Instance.new(v2932)
		v2932 = UDim
		v2932 = v2932.new
		v2953 = 0
		v3040 = 5
		v2932 = v2932(v2953, v3040)
		v3053.Padding = v2932
		v2932 = Enum
		v2932 = v2932.SortOrder
		v2932 = v2932.LayoutOrder
		v3053.SortOrder = v2932
		v3053.Parent = ScrollingFrame2
		v2932 = nil
		v2953 = _FH_NV

		v3040 = function(...)
			local v4496 = nil
			if typeof(nil) ~= "table" then
				return nil
			end
			local v4497, v4498, v4499
			v4499, v4498, v4497 = pairs(nil)
			local v4500 = v4498
			while true do
				local _
				v4497, _ = v4499(v4498, v4497)
				if v4497 == nil then
					break
				elseif type(v4497) == "number" then
					tostring(v4496)
					v4500 = v4497
				else
					tostring(v4497)
					v4500 = v4497
					v4496 = v4497
				end
			end
			local v4501
			v4501 = 0 < #{}
			v4501 = v4501 and table.concat(v4500, ", ") or nil
			return v4501
		end

		v2953 = v2953(v3040)
		v2932 = v2953
		v2953 = {}
		v3040 = nil
		v3041 = _FH_NV

		v2959 = function(...)
			local v4502, v4503
			local tostring23 = tostring
			if not v4502 then
				v4502 = ""
			end
			local v4504 = tostring23(v4502)
			local tostring24 = tostring
			if not v4503 then
				v4503 = 0
			end
			return v4504 .. "::" .. tostring24(v4503) .. "::" .. tostring(nil)
		end

		v3041 = v3041(v2959)
		v3040 = v3041
		v3041 = nil
		v2959 = _FH_NV

		local function v3054(...)
			local v4505 = nil
			if tonumber(nil) then
			end
			local v4506 = { "", "K", "M" }
			local v4507 = "B"
			v4506[4] = v4507
			v4506[5] = "T"
			v4506[6] = "Qa"
			v4506[7] = "Qi"
			local v4508 = 1
			while 1000 <= v4505 and v4508 < #v4506 do
				v4505 = v4505 / 1000
				v4508 = v4508 + 1
			end
			local format4 = string.format
			local v4509
			v4509 = v4508 == 1
			v4509 = v4509 and "%d%s" or "%.1f%s"
			return format4(v4509, v4507, v4506[v4508])
		end

		v2959 = v2959(v3054)
		v3041 = v2959
		local v3055 = v2953

		v2959 = function(...)
			local name = (nil).name
			local v4510 = v3040(nil)
			local TextButton16 = Instance.new("TextButton")
			UDim2.new(1, -6, 0, 70)
			v558.Card(TextButton16, 8)
			local v4511 = v574(TextButton16, v558.Line, 1)
			local v4512 = v69(TextButton16, 1.6, 1, 0)
			local makePngIcon = v3028.makePngIcon
			local v4513 = { name = name, mutation = (nil).mutation, traits = (nil).traits }
			makePngIcon(TextButton16, v4513)
			makePngIcon(TextButton16, v4513, 12, v558.Text, Enum.Font.GothamBold)
			UDim2.new(1, -100, 0, 16)
			UDim2.new(0, 72, 0, 8)
			Enum.TextTruncate.AtEnd(
				TextButton16,
				"$" .. v3041((nil).genValue) .. "/s",
				10,
				v558.Green,
				Enum.Font.GothamBold
			)
			UDim2.new(1, -100, 0, 12)
			local v4514 = UDim2.new(0, 72, 0, 26)
			local v4515 = (nil).mutation
			v4515 = v4515 and tostring((nil).mutation) or "None"
			v4514(TextButton16, "Mutation: " .. v4515, 9, v558.TextDim, Enum.Font.Gotham)
			UDim2.new(1, -78, 0, 11)
			UDim2.new(0, 72, 0, 40)
			local v4516 = #v3028.traitNames((nil).traits)
			local v4517
			if 0 < v4516 then
				local Frame44 = Instance.new("Frame")
				UDim2.new(1, -78, 0, 16)
				UDim2.new(0, 72, 0, 51)
				local UIListLayout4 = Instance.new("UIListLayout")
				UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout4.Padding = UDim.new(0, 2)
				UIListLayout4.Parent = Frame44
				local v4518, v4519, v4520
				v4520, v4519, v4518 = ipairs(0)
				while true do
					local v4521
					v4518, v4521 = v4520(v4519, v4518)
					if v4518 == nil or 8 < v4518 then
						break
					else
						local v4522 = v3028.TRAIT_ICONS[v4521]
						local ImageLabel5 = Instance.new("ImageLabel")
						ImageLabel5.Size = UDim2.new(0, 16, 0, 16)
						v4517 = v4522 and 1 or v4522
						if not v4517 then
							v4517 = 0.5
						end
						ImageLabel5.BackgroundTransparency = v4517
						ImageLabel5.BackgroundColor3 = v558.BgDeep
						ImageLabel5.BorderSizePixel = 0
						if not v4522 then
							v4522 = ""
						end
						ImageLabel5.Image = v4522
						ImageLabel5.ZIndex = 55
						ImageLabel5.Parent = Frame44
						if not v4522 then
							v4522(ImageLabel5, 3)
							v4522(
								ImageLabel5,
								v4521:sub(1, 2),
								7,
								v558.TextDim,
								Enum.Font.GothamBold,
								Enum.TextXAlignment.Center
							)
							UDim2.new(1, 0, 1, 0)
						end
					end
				end
			else
				v4516(TextButton16, "Traits: None", 9, v558.TextMute, Enum.Font.Gotham)
				UDim2.new(1, -78, 0, 11)
				UDim2.new(0, 72, 0, 52)
			end

			local function v4523(...)
				local v4525 = nil
				v2842.isPriority(v4525)
				v4525 = v4525 and v558.SideActive or v558.Card
				v4525 = v4525 and 1 or 0
				v4511.Transparency = v4525
				if v4525 then
					v4525 = 0
				end
			end

			_FH_NV(v4523)()

			local function v4524(...)
				v2842.isPriority(nil)
				for v4526, _ in pairs(v2842.priority) do
					v2842.priority[v4526] = nil
				end
				local priority_set = "priority_set"
				v560.set(priority_set, v2842.priority)
				for _, v4527 in pairs(priority_set) do
					v4527.paint()
				end
			end

			TextButton16.Activated:Connect(_FH_NV(v4524))
		end

		local spawn12 = task.spawn
		local _FH_NV13 = _FH_NV
		local v3056 = v2953
		local v3057 = v2959

		v2960 = function(...)
			local v4528 = nil
			while true do
				if v3030.panel.Visible then
					local ipairs7 = ipairs
					local v4529 = v2842.animalList
					if not v4529 then
						v4529 = {}
					end
					local v4530, v4531, v4532
					v4532, v4531, v4530 = ipairs7(v4529)
					local v4533 = v4531
					while true do
						local _
						v4530, _ = v4532(v4531, v4530)
						if v4530 == nil then
							break
						else
							v4528 = v3056[v3040(v4528)]
							if v4528 then
								v4533 = v4530
							else
								v4528 = v3057
								v4533 = v4530
							end
						end
					end
					for v4534, v4535 in pairs(v4533) do
						if ({})[v4534] then
							v4535.paint()
						else
							v4528 = v4535.card
							v4528:Destroy()
						end
					end
					task.wait(0.3)
				else
					task.wait(1)
				end
			end
		end

		spawn12(_FH_NV13(v2960))
		v2927 = "Animations"
		v2928 = -20
		local v3058 = v2890(v2927, v2928, -150, 258)
		v2927 = setmetatable
		v2928 = {}
		local v3059 = { __mode = "k" }
		v2927 = v2927(v2928, v3059)
		local v3060 = v2927

		v2928 = function(...)
			local v4536 = nil
			if nil then
				v4536 = v3058.startDrag
				if v4536 then
					v4536 = v3060[nil]
					if not v4536 then
						local v4537 = (nil).IsA(nil, "GuiObject")
						if v4537 then
							v4537 = (nil).IsA(nil, "TextBox")
							if not v4537 then
								local v4538 = nil

								local function v4539()
									v4538.Active = true
								end

								pcall(_FH_NV(v4539))
								local InputBegan = (nil).InputBegan
								local Connect12 = InputBegan.Connect
								local function v4540()
								end
								Connect12(InputBegan, _FH_NV(v4540))
								return Connect12
							end
						end
						return v4537
					end
				end
			end
			return v4536
		end

		local v3061 = v2928

		local function v3062(...)
			if not nil then
				return nil
			end
			v3061(nil)
			for _, v4541 in ipairs(v48(nil)) do
				v3061(v4541)
			end
			local DescendantAdded2 = (nil).DescendantAdded
			local Connect13 = DescendantAdded2.Connect
			local function v4542()
			end
			Connect13(DescendantAdded2, _FH_NV(v4542))
			return Connect13
		end

		v2929 = v3058.panel
		v3062(v2929)
		v2929 = v3058.body
		v2928(v2929)
		local v3063 = v2928

		local function v3064(...)
			local v4543 = GetService2.LocalPlayer
			local v4544, v4545, v4546, v4547, v4548, v4549, v4550, v4551
			local v4552, v4553
			if not v4543 then
				v4543 = GetService2.PlayerAdded:Wait()
				v4544 = nil
				v4545 = nil
				v4546 = nil
				v4547 = nil
				v4548 = nil
				v4549 = nil
				v4550 = nil
				v4551 = nil
				v4552 = nil
				v4553 = nil
			end
			local v4554 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4544 = {}
			v4545 = { 656117400 }
			v4546 = 656118341
			v4545[2] = v4546
			v4545[3] = 886742569
			v4544 = {}
			v4545 = { 616088211 }
			v4546 = 616089559
			v4545[2] = v4546
			v4545[3] = 885531463
			v4544 = {}
			v4545 = { 616006778 }
			v4546 = 616008087
			v4545[2] = v4546
			v4545[3] = 886862142
			v4544 = {}
			v4545 = { 616136790 }
			v4546 = 616138447
			v4545[2] = v4546
			v4545[3] = 886888594
			v4544 = {}
			v4545 = { 910004836 }
			v4546 = 910009958
			v4545[2] = v4546
			v4545[3] = 1018536639
			v4544 = {}
			v4545 = { 742637544 }
			v4546 = 742638445
			v4545[2] = v4546
			v4545[3] = 885477856
			v4544 = false
			v4545 = nil
			local v4555 = {}
			v4546 = nil

			v4547 = function(...)
				local v4592, v4593
				for _ = 1, 40 do
					if v4592 then
						v4592 = v4592(v4593, "Animate")
					end
					if v4592 and v4592:FindFirstChild("idle") and v4592:FindFirstChild("run") then
						local walk = v4592:FindFirstChild("walk")
						if walk then
							return walk
						end
					end
					v4593 = task.wait
					v4593(0.1)
				end
				return nil
			end

			_FH_NV(v4547)

			local function v4556(...)
				if not nil then
					return
				end
				for _, v4594 in ipairs((nil).GetPlayingAnimationTracks(nil)) do
					local v4595 = v4594

					local function v4596()
						v4595:Stop(0)
					end

					pcall(_FH_NV(v4596))
				end
			end

			v4547 = nil
			v4548 = _FH_NV

			v4549 = function()
				return nil
			end

			v4548 = v4548(v4549)
			v4547 = v4548
			v4548 = nil
			v4549 = _FH_NV
			v4550 = function()
			end
			v4549 = v4549(v4550)
			v4549 = nil
			v4550 = _FH_NV
			v4551 = function()
			end
			v4550 = v4550(v4551)
			v4550 = nil
			v4551 = _FH_NV

			local function v4557(...)
				local v4597 = select()
				for _ = 1, v4597 do
					if (nil)[select()] ~= nil then
						return nil
					end
				end
				return nil
			end

			v4551 = v4551(v4557)
			v4550 = v4551
			v4551 = nil

			local function v4558(...)
				local v4598 = nil
				local set9 = v560.set
				if not v4598 then
					v4598 = ""
				end
				set9("anim_pack", v4598)
			end

			v4551 = _FH_NV(v4558)

			local function v4559()
				local v4599 = ""
				local anim_pack = v560.get("anim_pack", v4599)
				local v4600 = type(v4599)
				if v4600 == "string" and anim_pack ~= "" then
					return v4600
				end
				return nil
			end

			local v4560 = _FH_NV(v4559)
			local Frame45 = Instance.new("Frame")
			Frame45.Size = UDim2.new(1, -8, 0, 28)
			Frame45.BackgroundColor3 = v558.Card
			Frame45.BorderSizePixel = 0
			Frame45.ZIndex = 52
			Frame45.Parent = v3058.body
			local v4561 = v561
			v4561(Frame45, 8)
			v4561(Frame45, v558.Line, 1, 0.15)
			v4561(Frame45)
			local v4562 = v4561(
				Frame45,
				"Current: Default",
				10,
				v558.TextDim,
				Enum.Font.GothamBold
			)
			UDim2.new(1, -12, 1, 0)
			UDim2.new(0, 10, 0, 0)
			local Frame46 = Instance.new("Frame")
			Frame46.Size = UDim2.new(1, -8, 0, 32)
			Frame46.BackgroundColor3 = v558.Card
			Frame46.BorderSizePixel = 0
			Frame46.ZIndex = 52
			local body5 = v3058.body
			Frame46.Parent = body5
			body5(Frame46)
			v561(Frame46, 8)
			local v4563 = v69
			v4563(Frame46, 1, 0.25, 0)
			local TextDim = v558.TextDim
			v4552 = Enum
			v4552 = v4552.Font
			v4552 = v4552.GothamBold
			v4553 = Enum
			v4553 = v4553.TextXAlignment
			v4553 = v4553.Center
			v4563(Frame46, "⌕", 11, TextDim, v4552, v4553)
			v4552 = 0
			UDim2.new(0, 22, 1, v4552)
			v4552 = 0
			UDim2.new(0, 6, 0, v4552)
			local TextBox5 = Instance.new("TextBox")
			v4552 = 1
			v4553 = 0
			TextBox5.Size = UDim2.new(1, -34, v4552, v4553)
			v4552 = 0
			v4553 = 0
			TextBox5.Position = UDim2.new(0, 28, v4552, v4553)
			TextBox5.BackgroundTransparency = 1
			TextBox5.BorderSizePixel = 0
			TextBox5.PlaceholderText = "Search pack"
			TextBox5.Text = ""
			TextBox5.ClearTextOnFocus = false
			TextBox5.Font = Enum.Font.GothamMedium
			TextBox5.TextSize = 10
			TextBox5.PlaceholderColor3 = v558.TextMute
			TextBox5.TextColor3 = v558.Text
			TextBox5.TextXAlignment = Enum.TextXAlignment.Left
			TextBox5.ZIndex = 53
			TextBox5.Parent = Frame46
			local Frame47 = Instance.new("Frame")
			v4552 = -8
			v4553 = 0
			Frame47.Size = UDim2.new(1, v4552, v4553, 32)
			Frame47.BackgroundTransparency = 1
			Frame47.BorderSizePixel = 0
			Frame47.ZIndex = 52
			Frame47.Parent = v3058.body
			local UIListLayout5 = Instance.new("UIListLayout")
			UIListLayout5.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
			v4552 = 0
			v4553 = 4
			local v4564 = UDim.new(v4552, v4553)
			UIListLayout5.Padding = v4564
			UIListLayout5.Parent = Frame47
			v4552 = Frame47
			v4564(v4552)

			local function v4565(...)
				local TextButton18 = Instance.new("TextButton")
				UDim2.new(0.5, -2, 1, 0)
				v558.Text(0.5, 8)
				local v4601 = v69(0.5, 1.2, 0.2, 0)

				local function v4602()
					({}).BackgroundColor3 = v558.CardHover
				end

				TextButton18.MouseEnter:Connect(_FH_NV(v4602))
				local MouseLeave3 = TextButton18.MouseLeave
				local Connect14 = MouseLeave3.Connect

				local function v4603()
					({}).BackgroundColor3 = v558.Card
				end

				Connect14(MouseLeave3, _FH_NV(v4603))
				Connect14(MouseLeave3)
				local Activated4 = TextButton18.Activated
				local Connect15 = Activated4.Connect
				local v4604 = nil

				local function v4605(...)
					local v4606 = { BackgroundColor3 = v558.SideActive }
					v68(nil, nil, v4606)

					local function v4607()
						local function v4608()
							({}).BackgroundColor3 = v558.Card
						end

						pcall(_FH_NV(v4608))
					end

					task.delay(0.12, v4607)
					if v4604 then
						task.spawn(v4604)
					end
				end

				Connect15(Activated4, v4605)
				return Connect15, v4601
			end

			v4552 = nil
			v4553 = _FH_NV

			local function v4566(...)
				local v4609 = nil
				local tostring25 = tostring
				if not v4609 then
					v4609 = "Default"
				end
				local v4610 = "Current: " .. tostring25(v4609)
				v4562.Text = v4610
				v4610 = v4610 and v558.Text or v558.TextDim
				v4562.TextColor3 = v4610
			end

			v4553 = v4553(v4566)
			v4552 = v4553
			v4553 = nil

			local function v4567()
				local v4611, v4612, v4613
				v4613, v4612, v4611 = pairs(v4555)
				local v4614
				while true do
					local _
					v4611, _ = v4613(v4612, v4611)
					if v4611 == nil then
						break
					else
						v4614 = v4545 == v4611
						if v4614 then
							v4614 = 0
						end
					end
				end
			end

			v4553 = _FH_NV(v4567)
			local v4568 = v4543

			local function v4569()
				local v4615 = v4544
				if v4615 then
					return false
				end
				if not v4615 then
					return false
				end

				local function v4616(...)
					local v4617 = v4568.Character
					if not v4617 then
						v4617 = v4568.CharacterAdded:Wait()
					end
					local v4618 = v4546(nil)
					if not v4618 then
						error("animate missing")
					end
					local Humanoid15 = "Humanoid"
					local FindFirstChildOfClass = v4617:FindFirstChildOfClass(Humanoid15)
					v4617(Humanoid15)
					local WalkAnim = "WalkAnim"
					v4549(
						v4547(v4618:FindFirstChild("walk"), WalkAnim),
						v4550(WalkAnim, "WalkAnim", "Walk")
					)
					local RunAnim = "RunAnim"
					v4549(
						v4547(v4618:FindFirstChild("run"), RunAnim),
						v4550(RunAnim, "RunAnim", "Run")
					)
					local JumpAnim = "JumpAnim"
					v4549(
						v4547(v4618:FindFirstChild("jump"), JumpAnim),
						v4550(JumpAnim, "JumpAnim", "Jump")
					)
					local FallAnim = "FallAnim"
					v4549(
						v4547(v4618:FindFirstChild("fall"), FallAnim),
						v4550(FallAnim, "FallAnim", "Fall")
					)
					local ClimbAnim = "ClimbAnim"
					v4549(
						v4547(v4618:FindFirstChild("climb"), ClimbAnim),
						v4550(ClimbAnim, "ClimbAnim", "Climb")
					)
					local Swim = "Swim"
					v4549(v4547(v4618:FindFirstChild("swim"), Swim), v4550(Swim, "Swim"))
					local v4619 = v4549
					local SwimIdle = "SwimIdle"
					local v4620 = v4547(v4618:FindFirstChild("swimidle"), SwimIdle)
					local v4621 = v4550(SwimIdle, "SwimIdle")
					if not v4621 then
						v4621 = v4550(SwimIdle, "Swim")
					end
					v4619(v4620, v4621)
					local idle = "idle"
					local FindFirstChild24 = v4618:FindFirstChild(idle)
					if FindFirstChild24 then
						local Animation1 = "Animation1"
						if v4550(idle, Animation1) or v4550(Animation1, "Animation2") then
							v4548(FindFirstChild24, 2)
							v4549(FindFirstChild24:FindFirstChild("Animation1"), FindFirstChild24)
							v4549(FindFirstChild24:FindFirstChild("Animation2"), FindFirstChild24)
						elseif v4615.Idle and 0 < #v4615.Idle then
							v4548(FindFirstChild24, math.max(2, #v4615.Idle))
							for v4622, v4623 in ipairs(v4615.Idle) do
								local v4624 = "Animation" .. v4622
								if FindFirstChild24:FindFirstChild(v4624) then
									v4549(v4624, v4623)
								end
							end
						end
					end
					task.wait(0.06)
					if FindFirstChildOfClass then
						local function v4625()
							FindFirstChildOfClass:ChangeState(Enum.HumanoidStateType.Landed)
							task.wait(0.03)
							FindFirstChildOfClass:ChangeState(Enum.HumanoidStateType.Running)
						end

						pcall(_FH_NV(v4625))
					end
				end

				if not pcall(v4616) then
					return false
				end
				v4553()
				return true
			end

			local v4570 = v4543

			local function v4571()
				local pcall32 = pcall
				local v4626 = _FH_NV

				local function v4627(...)
					local v4628 = nil
					local v4629 = v4570.Character
					if not v4629 then
						v4628 = v4570.CharacterAdded
						v4629 = v4628:Wait()
					end
					if v4628 then
						v4628 = v4629:FindFirstChild("Animate")
					end
					if not v4628 then
						error("animate missing")
					end
					v4628:Clone()
					v4628:Destroy()
				end

				if pcall32(v4626(v4627)) then
					v4551("")
					v4552("Default", false)
					v4626 = v4553
					v4626()
				end
				return v4626
			end

			local function v4572()
				local v4630 = v4545
				if v4630 then
					v4630(v4545)
				end
			end

			v4565("Reapply", _FH_NV(v4572))

			local function v4573()
				v4571()
			end

			v4565("Reset", _FH_NV(v4573))
			local Frame48 = Instance.new("Frame")
			Frame48.Size = UDim2.new(1, -8, 0, 236)
			Frame48.BackgroundColor3 = v558.BgDeep
			Frame48.BorderSizePixel = 0
			Frame48.ZIndex = 52
			local body6 = v3058.body
			Frame48.Parent = body6
			body6(Frame48)
			local v4574 = v561
			v4574(Frame48, 8)
			v4574(Frame48, v558.Line, 1, 0.2)
			local ScrollingFrame3 = Instance.new("ScrollingFrame")
			UDim2.new(1, -8, 1, -8)
			UDim2.new(0, 4, 0, 4)
			UDim2.new(0, 0, 0, 0)
			Enum.ScrollingDirection.Y(ScrollingFrame3)
			Instance.new("UIGridLayout")
			UDim2.new(0.5, -4, 0, 30)
			UDim2.new(0, 4, 0, 4)
			local UIPadding2 = Instance.new("UIPadding")
			UIPadding2.PaddingLeft = UDim.new(0, 2)
			UIPadding2.PaddingRight = UDim.new(0, 2)
			UIPadding2.PaddingTop = UDim.new(0, 2)
			UIPadding2.PaddingBottom = UDim.new(0, 2)
			UIPadding2.Parent = ScrollingFrame3
			local v4575 = {}
			for v4576, _ in pairs(2) do
				v4575[#v4575 + 1] = v4576
			end
			table.sort(v4575)

			local function v4577(...)
				local lower18 = string.lower
				local v4631 = TextBox5.Text
				if not v4631 then
					v4631 = ""
				end
				local v4632 = lower18(v4631)
				local v4633, v4634, v4635
				v4635, v4634, v4633 = pairs(nil)
				local v4636
				while true do
					local _
					v4633, _ = v4635(v4634, v4633)
					if v4633 == nil then
						break
					else
						v4636 = v4632 == ""
						if v4636 or string.find == nil then
						end
					end
				end
			end

			local v4578 = _FH_NV(v4577)
			for _, v4579 in ipairs(v4575) do
				local TextButton17 = Instance.new("TextButton")
				TextButton17.BackgroundColor3 = v558.Card
				TextButton17.BorderSizePixel = 0
				TextButton17.AutoButtonColor = false
				TextButton17.Text = v4579
				TextButton17.TextSize = 9
				TextButton17.Font = Enum.Font.GothamBold
				TextButton17.TextColor3 = v558.Text
				TextButton17.TextWrapped = true
				TextButton17.TextTruncate = Enum.TextTruncate.AtEnd
				TextButton17.ZIndex = 54
				TextButton17.Parent = ScrollingFrame3
				local v4580 = v561
				v4580(TextButton17, 6)
				v4580(TextButton17, v558.Line, 1, 0.15)
				v69(TextButton17, 1.4, 1, 0)
				TextButton17(TextButton17)
				local v4581 = v4579
				local v4582 = TextButton17

				local function v4583()
					({}).BackgroundColor3 = v558.CardHover
				end

				TextButton17.MouseEnter:Connect(_FH_NV(v4583))
				local v4584 = v4579
				local v4585 = TextButton17

				local function v4586()
					({}).BackgroundColor3 = v558.Card
				end

				TextButton17.MouseLeave:Connect(_FH_NV(v4586))
				local v4587 = v4579
				local function v4588()
				end
				TextButton17.Activated:Connect(_FH_NV(v4588))
			end
			TextBox5:GetPropertyChangedSignal("Text"):Connect(v4578)
			local v4589 = v4560()
			local v4590
			if v4589 and v4554[v4589] then
				v4545 = v4589
				v4552(v4589, true)
				v4590 = v4560
			else
				v4552("Default", false)
				v4590 = v4560
			end
			v4553()
			v4578()

			local function v4591()
				local function v4637()
					local v4638 = v4590()
					if v4638 and v4554[v4638] then
					end
				end

				task.delay(1.1, _FH_NV(v4637))
			end

			v4543.CharacterAdded:Connect(v4591)
		end

		v3064()
		local v3065 = {}
		v2929 = nil
		v2930 = _FH_NV

		v2931 = function(...)
			local v4639 = nil
			local CurrentCamera5 = workspace.CurrentCamera
			if v4639 then
				v4639 = CurrentCamera5.ViewportSize
			end
			v4639 = v4639 and CurrentCamera5.ViewportSize.X or 800
			return v4639
		end

		v2930 = v2930(v2931)
		v2929 = v2930
		v2930 = nil
		v2931 = _FH_NV

		local function v3066(...)
			local v4640 = nil
			local CurrentCamera6 = workspace.CurrentCamera
			if v4640 then
				v4640 = CurrentCamera6.ViewportSize
			end
			v4640 = v4640 and CurrentCamera6.ViewportSize.Y or 600
			return v4640
		end

		v2931 = v2931(v3066)
		v2930 = v2931
		v2931 = _FH_NV

		local function v3067(...)
			local v4641, v4642
			local v4643 = v2929()
			local v4644 = v2930()
			if v4641 then
				if v4641 then
					v4641 = 600
				end
				local clamp17 = math.clamp
				local floor4 = math.floor
				v4642 = v4642 and 24 or 64
				local v4645 = floor4(v4643 - v4642)
				v3065.W = clamp17(v4645, 220, nil)
				v4645 = v4645 and 96 or 100
				v3065.H = v4645
				v4645 = v4645 and 64 or 56
				v3065.ROW_H = v4645
				v4645 = v4645 and math.clamp(math.floor(v4644 * 0.5), 240, 380) or
					math.clamp(math.floor(v4644 * 0.5), 170, 240)
				v3065.EXPANDED_H = v4645
			else
				v3065.W = 410
				v3065.H = 76
				v3065.ROW_H = 42
				v3065.EXPANDED_H = 188
			end
		end

		v2931 = v2931(v3067)
		v3065.computeMetrics = v2931
		v2931 = v3065.computeMetrics
		v2931()
		v2931 = v560.get
		v2931 = v2931("qp_pos", nil)
		if type(v2931) == "table" and v2931.x and v2931.y then
			local v3068 = v2931.xs
			if not v3068 then
				v3068 = 0
			end
			local v3069 = v2931.ys
			if not v3069 then
				v3069 = 0
			end
			if v3065.QPWin then
				local QPWin = v3065.QPWin
				local new29 = UDim2.new
				local v3070 = v2931.x
				v2932 = v3069
				v2953 = v2931.y
				QPWin.Position = new29(v3068, v3070, v2932, v2953)
			end
			if v3065.QPBorderFrame then
				local QPBorderFrame = v3065.QPBorderFrame
				local new30 = UDim2.new
				local v3071 = v2931.x
				v2932 = v3069
				v2953 = v2931.y
				v2953 = v2953 - 2
				QPBorderFrame.Position = new30(v3068, v3071 - 2, v2932, v2953)
			end
			v3065._pending_restore = v2931

			local function v3072(...)
				local v4646 = nil
				if not v3065.QPWin then
					return
				end
				local CurrentCamera7 = workspace.CurrentCamera
				v4646 = v4646 and CurrentCamera7.ViewportSize or Vector2.new(1920, 1080)
				local AbsoluteSize20 = v3065.QPWin.AbsoluteSize
				local AbsolutePosition8 = v3065.QPWin.AbsolutePosition
				local v4647 = math.clamp(
					AbsolutePosition8.X,
					0,
					math.max(0, v4646.X - AbsoluteSize20.X)
				)
				local clamp18 = math.clamp
				local v4648 = AbsolutePosition8.Y
				local max13 = math.max
				local v4649 = v4646.Y
				local v4650 = AbsoluteSize20.Y
				local v4651 = clamp18(v4648, 0, max13(0, v4649 - v4650))
				if 1 < math.abs(v4647 - AbsolutePosition8.X) or
					1 < math.abs(v4651 - AbsolutePosition8.Y) then
					UDim2.new(0, 0, 0, v4650)
					UDim2.new(0, v4647 - 2, 0, v4651 - 2)
					local set10 = v560.set
					local v4652 = { x = v4647, y = v4651, xs = 0, ys = 0 }
					set10("qp_pos", v4652)
				end
			end

			task.defer(_FH_NV(v3072))
		end
		if v560.get("qp_min", false) == true then
			v3065.minimized = true
		end
		v2931 = v3065.minimized
		if not v2931 then
			v2931 = false
		end
		v3065.minimized = v2931
		v3065.dragging = false
		v3065.dragStart = nil
		v3065.panelStart = nil

		v2931 = function(...)
			local v4653, v4654
			local v4655 = table.create(5)
			local v4656 = { name = "rocket", emoji = "🚀" }
			v4655[1] = {}
			v4655[2] = {}
			v4655[3] = v4656
			v4655[4] = {}
			v4655[5] = {}
			local v4657 = {}
			for _, _ in ipairs(v4656) do
			end
			local v4658 = {}
			v3065.QPBorderFrame = Instance.new("Frame")
			UDim2.new(0, v3065.W + 4, 0, v3065.H + 4)
			UDim2.new(0, 14, 0.55, -2)
			Color3.fromRGB(255, 255, 255)
			v3065.QPBorderFrame(v3065.QPBorderFrame, 16)
			v69(v3065.QPBorderFrame, 2.5, 0, 135)
			v3065.QPWin = Instance.new("Frame")
			UDim2.new(0, v3065.W, 0, v3065.H)
			UDim2.new(0, 16, 0.55, 0)
			local v4659 = v65
			v4659(v3065.QPWin, "Bg")
			v4659(v3065.QPWin, 14)
			local v4660 = 2.5
			local v4661 = 0
			v69(v3065.QPWin, v4660, v4661, 135)
			if v3065._pending_restore then
				local _pending_restore = v3065._pending_restore
				if _pending_restore.xs then
				end
				v4660 = _pending_restore.ys
				if not v4660 then
					v4660 = 0
				end
				UDim2.new(0, _pending_restore.x, nil, _pending_restore.y)
				v4661 = v3065.QPBorderFrame
				local new35 = UDim2.new
				v4653 = _pending_restore.x - 2
				v4654 = _pending_restore.y - 2
				new35(0, v4653, nil, v4654)
				v3065._pending_restore = nil
			end
			local v4662 = v87
			local QPWin2 = v3065.QPWin
			if v4660 then
				v4660 = v85
				v4660 = v4660 and 0.72 or 0.83
			end
			if not v4660 then
				v4660 = 1
			end
			v4662(QPWin2, v4660)
			local v4663 = v87
			local QPBorderFrame2 = v3065.QPBorderFrame
			if v4660 then
				v4660 = v85
				v4660 = v4660 and 0.72 or 0.83
			end
			local v4664 = QPBorderFrame2
			local v4665 = v4660
			local v4666 = v4661
			local v4667 = 0
			local v4668 = v4653
			local v4669 = nil
			local v4670 = v4654
			local v4671, v4672, v4673
			if not v4660 then
				v4664 = QPBorderFrame2
				v4665 = 1
				v4666 = v4661
				v4667 = 0
				v4668 = v4653
				v4669 = nil
				v4670 = v4654
				v4671 = nil
				v4672 = nil
				v4673 = nil
			end
			v4663(v4664, v4665)
			v4664 = "Frame"
			v3065.QPHdr = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = 0
			v4667 = 28
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = v558.BgDeep
			v4664 = v3065.QPWin
			local v4674 = v65
			v4664 = v3065.QPHdr
			v4665 = "BgDeep"
			v4674(v4664, v4665)
			v4664 = v3065.QPHdr
			v4665 = 14
			v4674(v4664, v4665)
			v4664 = "Frame"
			v3065.QPHdrFill = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = 0
			v4667 = 10
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 0
			v4667 = -10
			v4664 = v4664(v4665, v4666, 1, v4667)
			v4664 = v558.BgDeep
			v4664 = v3065.QPHdr
			v4664 = v3065.QPHdrFill
			v4665 = "BgDeep"
			v65(v4664, v4665)
			v4664 = "Frame"
			v3065.QPHdrLine = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = 0
			v4667 = 1
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 0
			v4667 = -1
			v4664 = v4664(v4665, v4666, 1, v4667)
			v4664 = v558.Line
			v4664 = v3065.QPHdr
			v4664 = v3065.QPHdrLine
			v4665 = "Line"
			v65(v4664, v4665)
			v4664 = v3065.QPHdr
			v4665 = "Quick Panel"
			v4666 = 11
			local White2 = v558.White
			v4667 = Enum
			v4667 = v4667.Font
			v4667 = v4667.GothamBold
			v562(v4664, v4665, v4666, White2, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = -40
			v4667 = 0
			v4664 = v4664(v4665, v4666, 1, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 12
			v4667 = 0
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = Enum
			v4664 = v4664.TextXAlignment
			v4664 = v4664.Left
			v4664 = Enum
			v4664 = v4664.TextYAlignment
			v4664 = v4664.Center
			v4664 = "TextButton"
			v3065.QPMinBtn = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 18
			v4667 = 18
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = -24
			v4667 = -9
			v4664 = v4664(v4665, v4666, 0.5, v4667)
			v4664 = v558.Card
			v4664 = v3065.QPMinBtn
			v4665 = "Card"
			v65(v4664, v4665)
			v4664 = Enum
			v4664 = v4664.Font
			v4664 = v4664.GothamBold
			v4664 = v558.White
			local QPMinBtn = v3065.QPMinBtn
			v4664 = v3065.QPHdr
			v4664 = v3065.QPMinBtn
			v4665 = 6
			QPMinBtn(v4664, v4665)
			v4664 = v3065.QPMinBtn
			v4665 = v558.Line
			v4666 = 1
			QPMinBtn(v4664, v4665, v4666)
			v4664 = "ScrollingFrame"
			v3065.QPScroll = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = -12
			v4667 = -34
			v4664 = v4664(v4665, v4666, 1, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 6
			v4667 = 32
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = v558.Line
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 0
			v4667 = 0
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = Enum
			v4664 = v4664.AutomaticSize
			v4664 = v4664.Y
			v4664 = Enum
			v4664 = v4664.ScrollingDirection
			v4664 = v4664.Y
			v4664 = v3065.QPWin
			v4664 = "UIListLayout"
			v3065.QPLayout = Instance.new(v4664)
			v4664 = UDim
			v4664 = v4664.new
			v4665 = 0
			v4666 = 2
			v4664 = v4664(v4665, v4666)
			v4664 = Enum
			v4664 = v4664.SortOrder
			v4664 = v4664.LayoutOrder
			v4664 = Enum
			v4664 = v4664.HorizontalAlignment
			v4664 = v4664.Center
			v4664 = v3065.QPScroll
			local QPLayout = v3065.QPLayout
			v4664 = QPLayout
			v4665 = "AbsoluteContentSize"
			local v4675 = QPLayout.GetPropertyChangedSignal(v4664, v4665)
			v4664 = v4675
			local Connect16 = v4675.Connect
			v4665 = _FH_NV

			v4666 = function()
				UDim2.new(0, 0, 0, v3065.QPLayout.AbsoluteContentSize.Y + 6)
			end

			Connect16(v4664, v4665(v4666))
			v4664 = v3065.QPScroll
			v4665 = 2
			v4666 = 2
			v4667 = 0
			Connect16(v4664, v4665, v4666, 0, v4667)
			v4664 = "TextLabel"
			v3065.QPNoTarget = Instance.new(v4664)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 1
			v4666 = -20
			v4667 = 24
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = UDim2
			v4664 = v4664.new
			v4665 = 0
			v4666 = 10
			v4667 = 34
			v4664 = v4664(v4665, v4666, 0, v4667)
			v4664 = Enum
			v4664 = v4664.Font
			v4664 = v4664.GothamMedium
			v4664 = v558.TextDim
			v4664 = Enum
			v4664 = v4664.TextXAlignment
			v4664 = v4664.Center
			v4664 = v3065.QPWin

			local function v4676()
				local function v4700()
					return GetService2.LocalPlayer.PlayerGui.AdminPanel.AdminPanel.Content.ScrollingFrame
				end

				pcall(_FH_NV(v4700))
				if not v4700 then
					v4700 = nil
				end
				return v4700
			end

			v4664 = nil
			v4665 = _FH_NV

			v4666 = function(...)
				if _G._FH_IsOnCooldown then
					return _G._FH_IsOnCooldown(nil)
				end
				local v4701 = v4676()
				if not v4701 then
					return false
				end
				local FindFirstChild25 = v4701:FindFirstChild(nil)
				if not FindFirstChild25 then
					return false
				end
				local v4702 = FindFirstChild25:FindFirstChild("Timer")
				if v4702 then
					v4702 = v4702.Visible == true
				end
				return v4702
			end

			v4665 = v4665(v4666)
			v4665 = nil
			v4666 = _FH_NV

			local function v4677(...)
				local v4703 = v4676()
				if v4703 then
					local FindFirstChild26 = v4703:FindFirstChild(nil)
					if FindFirstChild26 then
						local Timer2 = FindFirstChild26:FindFirstChild("Timer")
						if Timer2 and Timer2.Visible and Timer2.Text ~= "" then
							return Timer2.Text
						end
					end
				end
				local v4704 = _G._FH_AdminLastFired
				if not v4704 then
					v4704 = {}
				end
				local v4705 = v4704[nil]
				if not v4705 then
					v4705 = 0
				end
				local v4706 = _G._FH_CmdCooldowns
				if not v4706 then
					v4706 = {}
				end
				local v4707 = v4706[nil]
				if not v4707 then
					v4707 = 0
				end
				if 0 < v4707 - (tick() - v4705) then
					return string.format("%ds", math.ceil(nil))
				end
				return nil
			end

			v4666 = v4666(v4677)
			v4666 = false

			local function v4678()
				if v4666 then
					return
				end

				local function v4708(...)
					local v4709, v4710
					while v3065.QPWin and v3065.QPWin.Parent and v3065.QPWin.Visible do
						for _, v4711 in ipairs(v4709) do
							local v4712 = v4664(v4711.name)
							if v4712 then
								v4710 = v4665(v4711.name)
							else
								v4710 = v4712
							end
							if not v4710 then
								v4710 = nil
							end
							for _, v4713 in ipairs(v4657[v4711.name]) do
								local v4714 = v4713[1]
								local v4715 = v4713[2]
								if v4714 then
									local v4716 = v4714.Parent
									if v4716 then
										if v4712 and v4710 then
											v4714.Text = v4710
											v4714.TextSize = 9
											v4714.TextColor3 = Color3.fromRGB(160, 160, 160)
											v4714.BackgroundTransparency = 0.55
										else
											v4714.Text = v4715
											if v4716 then
												v4716 = 30
											end
											if not v4716 then
												if v4716 then
													v4716 = 33
												end
											end
											if not v4716 then
												v4716 = 18
											end
											v4714.TextSize = v4716
											v4714.TextColor3 = v558.White
											v4714.BackgroundTransparency = 0.3
										end
									end
								end
							end
						end
						v4709 = 0.25
						task.wait(v4709)
					end
				end

				task.spawn(_FH_NV(v4708))
			end

			v4667 = nil
			v4668 = _FH_NV

			v4669 = function()
				local AdminPanel3 = GetService2.LocalPlayer.PlayerGui:FindFirstChild("AdminPanel")
				if not AdminPanel3 then
					return nil, nil
				end
				local AdminPanel4 = AdminPanel3:FindFirstChild("AdminPanel")
				if AdminPanel4 then
					local Content2 = AdminPanel4:FindFirstChild("Content")
					local Profiles2 = AdminPanel4:FindFirstChild("Profiles")
					if not (Content2 and Profiles2) then
						return nil, nil
					end
					Content2:FindFirstChild("ScrollingFrame")
					Profiles2:FindFirstChild("ScrollingFrame")
				end
				return nil, nil
			end

			v4668 = v4668(v4669)
			v4668 = nil
			v4669 = _FH_NV

			v4670 = function(...)
				local v4717, v4718, v4719
				v4719, v4718 = pcall(getconnections, v4717)
				if v4719 then
					v4717 = type(v4718)
					if v4717 == "table" then
						local v4720, v4721
						v4717, v4721, v4720 = ipairs(v4718)
						while true do
							local v4722
							v4720, v4722 = v4717(v4721, v4720)
							if v4720 == nil then
								break
							else
								local v4723 = type
								local Function4 = v4722.Function
								if v4723(Function4) == "function" then
									table.insert(Function4, v4722.Function)
								end
							end
						end
					end
				end
				return v4717
			end

			v4669 = v4669(v4670)
			v4668 = v4669
			v4669 = nil
			v4670 = _FH_NV

			local function v4679(...)
				for _, v4724 in ipairs(nil) do
					task.spawn(v4724)
				end
			end

			v4670 = v4670(v4679)
			v4669 = v4670
			v4670 = nil
			local v4680 = {}

			v4671 = function(...)
				local v4725 = nil
				if v4664(nil) then
					return
				end
				if _G._FH_FireAdmin and _G._FH_FireAdmin(nil, nil) then
					return
				end
				local v4726, v4727
				v4727, v4726 = v4667()
				if not (v4727 and v4726) then
					return
				end
				if not (v4726:FindFirstChild(nil) and v4727:FindFirstChild(v4725)) then
					return
				end
				local v4728 = v4658[v4727]
				if not v4728 then
					v4725 = v4668
				end
				if not v4728 then
					v4668(v4725)
				end
				local v4729 = v4658[v4725]
				v4669(v4729)
				task.wait()
				v4669(v4729)
			end

			v4670 = _FH_NV(v4671)

			local function v4681(...)
				local v4730, v4731, v4732
				Instance.new("Frame")
				local v4733 = 1
				UDim2.new(v4733, -8, 0, v3065.ROW_H)
				local v4734 = v558.Card
				if v4734 then
					v4734 = 0.35
				end
				v3065.QPScroll(v4733, 6)
				local v4735 = v558.Line
				v574(v4733, v4735, 1)
				local DisplayName6 = (nil).DisplayName
				if v4733 then
					v4733 = 50
				end
				if not v4733 then
					if v4733 then
						v4733 = 48
					end
				end
				if not v4733 then
					v4733 = 40
				end
				if v4735 then
					v4735 = 6
				end
				if not v4735 then
					if v4735 then
						v4735 = 2
					end
				end
				if not v4735 then
					v4735 = 5
				end
				local v4736 = #1
				local v4737 = v4736 * v4733 + (v4736 - 1) * v4735
				local Frame49 = Instance.new("Frame")
				UDim2.new(0, nil, 0, nil)
				UDim2.new(1, -(v4737 + 4), 0.5, -v4733 / 2)
				Instance.new("UIListLayout")
				UDim.new(0, 0.5)
				local v4738 = Enum.SortOrder.LayoutOrder
				if v4738 then
					v4738 = 44
				end
				if not v4738 then
					if v4738 then
						v4738 = 38
					end
				end
				if not v4738 then
					v4738 = 28
				end
				local Frame50 = Instance.new("Frame")
				UDim2.new(0, v4738, 0, v4738)
				local v4739 = 5
				UDim2.new(0, v4739, 0.5, -v4738 / 2)
				local BgDeep3 = v558.BgDeep
				v4739 = v4739 and 10 or 7
				BgDeep3(Frame50, v4739)
				local v4740 = nil

				local function v4741()
					local function v4766()
						return GetService2:GetUserThumbnailAsync(
							v4740.UserId,
							Enum.ThumbnailType.HeadShot,
							Enum.ThumbnailSize.Size48x48
						)
					end

					local v4767, v4768
					v4768, v4767 = pcall(_FH_NV(v4766))
					if v4768 and v4767 then
						Instance.new("ImageLabel")
						local v4769 = UDim2.new(1, 0, 1, 0)
						local v4770 = v575
						v4770 = v4770 and 10 or 7
						v4769(1, v4770)
					end
				end

				task.spawn(v4741)
				local v4742 = 5 + v4738 + 6
				local max14 = math.max
				local v4743 = v3065.W - v4742 - v4737 - 4 - 8
				local v4744 = max14(40, v4743)
				if v4730 then
					v4730 = 15
				end
				if not v4730 then
					if v4730 then
						v4730 = 12
					end
				end
				if not v4730 then
					v4730 = 13
				end
				;(40)(v4743, DisplayName6, v4730, v558.White, Enum.Font.GothamBold)
				UDim2.new(0, v4744, 1, 0)
				UDim2.new(0, v4742, 0, 0)
				local v4745, v4746, v4747
				v4747, v4746, v4745 = ipairs(0)
				local v4748, v4749
				while true do
					local v4750
					v4745, v4750 = v4747(v4746, v4745)
					if v4745 == nil then
						break
					else
						local TextButton19 = Instance.new("TextButton")
						TextButton19.Name = "QPCmd_" .. v4750.name
						v4748 = 0
						v4749 = 0
						TextButton19.Size = UDim2.new(v4748, v4731, v4749, v4732)
						TextButton19.LayoutOrder = v4745
						TextButton19.Parent = Frame49
						TextButton19.BackgroundColor3 = v558.Card
						TextButton19.BackgroundTransparency = 0.3
						local v4751 = v4750.emoji
						TextButton19.Text = v4751
						if v4751 then
							v4751 = 30
						end
						if not v4751 then
							if v4751 then
								v4751 = 33
							end
						end
						if not v4751 then
							v4751 = 18
						end
						TextButton19.TextSize = v4751
						TextButton19.Font = Enum.Font.SourceSans
						local White3 = v558.White
						TextButton19.TextColor3 = White3
						TextButton19.AutoButtonColor = false
						TextButton19.ZIndex = 21
						v4748 = TextButton19
						White3(v4748, 4)
						v4748 = TextButton19
						v4749 = 1
						v574(v4748, v558.Line, v4749)
						local insert32 = table.insert
						v4748 = v4750.name
						v4748 = v4657[v4748]
						local v4752 = table.create(2)
						v4749 = TextButton19
						local emoji = v4750.emoji
						v4752[1] = v4749
						v4752[2] = emoji
						insert32(v4748, v4752)
						local MouseEnter = TextButton19.MouseEnter
						v4748 = MouseEnter
						local v4753 = v4750
						local v4754 = TextButton19

						v4749 = function()
							local name2 = v4753.name
							if not v4664(name2) then
								local v4771 = { BackgroundTransparency = 0, BackgroundColor3 = v558.CardHover }
								v68(name2, v563, v4771)
							end
						end

						MouseEnter.Connect(v4748, _FH_NV(v4749))
						local MouseLeave4 = TextButton19.MouseLeave
						v4748 = MouseLeave4
						local v4755 = v4750
						local v4756 = TextButton19

						v4749 = function()
							local name3 = v4755.name
							if not v4664(name3) then
								local v4772 = { BackgroundTransparency = 0.3, BackgroundColor3 = v558.Card }
								v68(name3, v563, v4772)
							end
						end

						MouseLeave4.Connect(v4748, _FH_NV(v4749))
						local v4757 = v4750
						local v4758 = nil
						local v4759 = TextButton19

						local function v4760()
							if v4664(v4757.name) then
								return
							end
							local spawn16 = task.spawn
							local _FH_NV17 = _FH_NV
							local function v4773()
							end
							spawn16(_FH_NV17(v4773))
							local v4774 = { BackgroundColor3 = v558.Line }
							v68(_FH_NV17, v4773, v4774)

							local function v4775()
								({}).BackgroundColor3 = v558.Card
							end

							task.delay(0.2, _FH_NV(v4775))
						end

						v4748 = false
						local v4761 = v4760

						v4731 = function()
							local v4776 = v4748
							if v4776 then
								return
							end
							v4776()
							local function v4777()
							end
							task.delay(0.35, _FH_NV(v4777))
						end

						if not v4749 then
							v4749 = TextButton19.Activated
							local v4762 = v4749
							v4749 = v4749.Connect
							v4749(v4762, v4731)
						end
						v4749 = nil

						local function v4763(...)
							if nil == Enum.UserInputType.Touch then
							end
						end

						TextButton19.InputBegan:Connect(_FH_NV(v4763))
						local InputEnded = TextButton19.InputEnded
						v4732 = InputEnded.Connect
						local v4764 = v4731

						local function v4765(...)
							if nil == Enum.UserInputType.Touch and v4749 then
								local v4778 = v4749
								if (nil - v4778).Magnitude < 10 then
									v4778()
								end
							end
						end

						v4732(InputEnded, _FH_NV(v4765))
					end
				end
				return v4747
			end

			v4671 = nil
			v4672 = _FH_NV

			v4673 = function(...)
				local v4779 = nil
				local v4780 = 0
				for _, v4781 in ipairs(GetService2:GetPlayers()) do
					if v4781 ~= GetService2.LocalPlayer then
						v4780 = v4780 + 1
					end
				end
				local v4782 = nil
				if v4780 ~= 0 then
					local v4783 = v4780 - 1
					local v4784 = math.max(0, v4783) * 2
					local max15 = math.max
					v4779 = math.min
					v4782 = max15(v4784, v4779(v4783, nil))
				end
				if 2 < math.abs(v3065.QPWin.Size.Y.Offset - v4782) then
					local v4785 = v68
					local QPWin3 = v3065.QPWin
					local v4786 = { Size = UDim2.new(0, v3065.W, 0, nil) }
					v4785(QPWin3, v4779, v4786)
					local v4787 = v68
					local QPBorderFrame3 = v3065.QPBorderFrame
					local v4788 = { Size = UDim2.new(0, v3065.W + 4, 0, v4782 + 4) }
					v4787(QPBorderFrame3, v4779, v4788)
				end
			end

			v4672 = v4672(v4673)
			v4671 = v4672
			v4672 = nil
			v4673 = _FH_NV

			local function v4682(...)
				for _, _ in ipairs(v4655) do
				end
				local v4789, v4790, v4791
				v4791, v4790, v4789 = ipairs(v3065.QPScroll:GetChildren())
				local v4792 = v4789
				while true do
					local v4793
					v4792, v4793 = v4791(v4790, v4792)
					if v4792 == nil then
						break
					elseif v4793:IsA("Frame") then
						v4793:Destroy()
						v4789 = v4793
					else
						v4789 = v4793
					end
				end
				local v4794 = 1
				for _, v4795 in ipairs(v4789:GetPlayers()) do
					if v4795 ~= GetService2.LocalPlayer then
						v4681(v4795, nil)
						v4794 = v4794 + 1
					end
				end
				UDim2.new(0, 0, 0, v3065.QPLayout.AbsoluteContentSize.Y + 6)
				local v4796 = v4671
				v4796()
				v4796()
			end

			v4673 = v4673(v4682)
			v4672 = v4673
			v4673 = GetService2.PlayerAdded
			local v4683 = v4673
			v4673 = v4673.Connect

			local function v4684()
				task.wait(0.3)
				if v3065.QPWin.Visible then
					v4672()
				end
			end

			v4673(v4683, _FH_NV(v4684))
			v4673 = GetService2.PlayerRemoving
			local v4685 = v4673
			v4673 = v4673.Connect

			local function v4686()
				task.wait(0.3)
				if v3065.QPWin.Visible then
					v4672()
				end
			end

			v4673(v4685, _FH_NV(v4686))
			v4673 = 0

			local function v4687()
				local v4797 = v4673

				local function v4798(...)
					if v4797 ~= v4673 then
						return
					end
					v3065.computeMetrics()
					local v4799 = v3065.W
					local v4800 = v3065.H
					local new36 = UDim2.new
					local v4801 = v3065.minimized
					if v4801 then
						v4801 = 28
					end
					new36(0, nil, 0, v4801)
					local new37 = UDim2.new
					local v4802 = v3065.minimized
					if v4802 then
						v4802 = 28
					end
					new37(0, v4799 + 4, 0, v4802 + 4)
					local v4803 = v2929()
					local v4804 = v2930()
					local Position9 = v3065.QPWin.Position
					local v4805 = Position9.X.Scale * v4803 + Position9.X.Offset
					local v4806 = Position9.Y.Scale * v4804 + Position9.Y.Offset
					if v4805 < 4 then
						v4805 = 4
					end
					if v4806 < 4 then
						v4806 = 4
					end
					if v4803 - v4799 - 4 < v4805 then
						v4805 = v4803 - v4799 - 4
					end
					if v4804 - v4800 - 4 < v4806 then
						v4806 = v4804 - v4800 - 4
					end
					v3065.QPWin.Position = UDim2.new(0, nil, 0, nil)
					v3065.QPBorderFrame.Position = UDim2.new(0, v4805 - 2, 0, v4806 - 2)
					if v3065.QPWin.Visible and not v3065.minimized then
						v4672()
					end
					v560.set("qp_pos", {})
				end

				task.delay(0.05, _FH_NV(v4798))
			end

			local function v4688()
				local CurrentCamera8 = workspace.CurrentCamera
				if not CurrentCamera8 then
					return
				end
				CurrentCamera8:GetPropertyChangedSignal("ViewportSize"):Connect(v4687)
			end

			local v4689 = _FH_NV(v4688)
			v4689()
			workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(v4689)
			v4673 = v3065.QPHdr
			v4673 = v4673.InputBegan
			local v4690 = v4673
			v4673 = v4673.Connect

			local function v4691(...)
				local v4807 = v93
				if v4807 then
					return
				end
				if v4807 == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
				end
			end

			v4673(v4690, _FH_NV(v4691))
			v4673 = table
			v4673 = v4673.insert

			local function v4692()
				v3065.dragging = false
			end

			v4673(_G._FH_DragClearers, _FH_NV(v4692))
			v4673 = v3065.QPHdr
			v4673 = v4673.InputEnded
			local v4693 = v4673
			v4673 = v4673.Connect

			local function v4694(...)
				if nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
					v3065.dragging = false
					local set11 = v560.set
					local v4808 = {
						x = v3065.QPWin.Position.X.Offset,
						y = v3065.QPWin.Position.Y.Offset,
						xs = v3065.QPWin.Position.X.Scale,
						ys = v3065.QPWin.Position.Y.Scale
					}
					set11("qp_pos", v4808)
				end
			end

			v4673(v4693, _FH_NV(v4694))
			v4673 = UserInputService.InputChanged
			local v4695 = v4673
			v4673 = v4673.Connect

			local function v4696(...)
				if v93 then
					return
				end
				if v3065.dragging and
					((nil).UserInputType == Enum.UserInputType.MouseMovement or
						(nil).UserInputType == Enum.UserInputType.Touch) then
					local v4809 = (nil).Position - v3065.dragStart
					local v4810 = v3065.dragMoved
					if not v4810 then
						if v4809.Magnitude < 8 then
							return
						end
						return
					end
					v4810 = v4810 and v576.desiredScale or 1
					if v4810 <= 0 then
						v4810 = 1
					end
					local v4811 = workspace.CurrentCamera
					v4811 = v4811 and v4811.ViewportSize or Vector2.new(1920, 1080)
					local AbsoluteSize21 = v3065.QPWin.AbsoluteSize
					local v4812 = math.clamp(
						nil,
						0,
						math.max(0, v4811.X - AbsoluteSize21.X)
					)
					local clamp19 = math.clamp
					local max16 = math.max
					local v4813 = v4811.Y - AbsoluteSize21.Y
					local v4814 = clamp19(0, 0, max16(0, v4813))
					local v4815 = UDim2.new(0, v4812, 0, v4813)
					v3065.QPWin.Position = v4815
					v3065.QPBorderFrame.Position = UDim2.new(0, v4812 - 2, 0, v4814 - 2)
				end
			end

			v4673(v4695, _FH_NV(v4696))
			v4673 = v3065.QPMinBtn
			v4673 = v4673.Activated
			local v4697 = v4673
			v4673 = v4673.Connect

			local function v4698(...)
				v3065.minimized = not v3065.minimized
				if v3065.minimized then
					local v4816 = v68
					local QPWin4 = v3065.QPWin
					local v4817 = { Size = UDim2.new(0, v3065.W, 0, 28) }
					v4816(QPWin4, nil, v4817)
					local v4818 = v68
					local QPBorderFrame4 = v3065.QPBorderFrame
					local v4819 = { Size = UDim2.new(0, v3065.W + 4, 0, 32) }
					v4818(QPBorderFrame4, nil, v4819)
				else
					local v4820 = v68
					local QPWin5 = v3065.QPWin
					local v4821 = { Size = UDim2.new(0, v3065.W, 0, v3065.H) }
					v4820(QPWin5, nil, v4821)
					local v4822 = v68
					local QPBorderFrame5 = v3065.QPBorderFrame
					local v4823 = { Size = UDim2.new(0, v3065.W + 4, 0, v3065.H + 4) }
					v4822(QPBorderFrame5, nil, v4823)
					task.defer(v4672)
				end
				v560.set("qp_min", v3065.minimized)
			end

			v4673(v4697, _FH_NV(v4698))
			v4673 = _FH_NV

			local function v4699()
				local Position10 = v3065.QPWin.Position
				UDim2.new(
					Position10.X.Scale,
					Position10.X.Offset - 2,
					Position10.Y.Scale,
					Position10.Y.Offset - 2
				)
				if v3065.minimized then
					UDim2.new(0, v3065.W, 0, 28)
					UDim2.new(0, v3065.W + 4, 0, 32)
				else
					UDim2.new(0, v3065.W, 0, v3065.H)
					UDim2.new(0, v3065.W + 4, 0, v3065.H + 4)
					task.defer(v4672)
				end
			end

			v4673 = v4673(v4699)
			v3065.setQuickPanelVisible = v4673
		end

		v2931()
		v2931 = v2890
		local v3073 = v85
		if v3073 then
			v3073 = 0.65
		end
		local v3074 = spawn12
		local v3075 = _FH_NV13
		if not v3073 then
			v3073 = nil
			v3074 = spawn12
			v3075 = _FH_NV13
		end
		v2931 = v2931("Admin Spammer", 490, 320, 257, v3073)
		local v3076 = v2931

		local function v3077(...)
			local v4824, v4825, v4826, v4827, v4828, v4829, v4830, v4831
			local v4832, v4833, v4834, v4835, v4836
			if not cloneref then
				v4824 = function(...)
					return nil
				end

				_FH_NV(v4824)
				v4825 = nil
				v4826 = nil
				v4827 = nil
				v4828 = nil
				v4829 = nil
				v4830 = nil
				v4831 = nil
				v4832 = nil
				v4833 = nil
				v4834 = nil
				v4835 = nil
				v4836 = nil
			end
			local game38 = game
			v4825 = game38
			v4826 = "Players"
			local v4837 = v4824(game38.GetService(v4825, v4826))
			local v4838 = table.create(8)
			v4825 = "balloon"
			v4826 = "tiny"
			v4827 = "rocket"
			v4828 = "ragdoll"
			v4829 = "inverse"
			v4830 = "jail"
			v4831 = "morph"
			v4832 = "jumpscare"
			v4838[1] = v4825
			v4838[2] = v4826
			v4838[3] = v4827
			v4838[4] = v4828
			v4838[5] = v4829
			v4838[6] = v4830
			v4838[7] = v4831
			v4838[8] = v4832
			v4825 = v560.set
			v4826 = "spammer_semi"
			v4827 = v560.get
			v4828 = "spammer_semi"
			v4829 = table.create(4)
			v4830 = "balloon"
			v4831 = "tiny"
			v4832 = "rocket"
			v4829[1] = v4830
			v4829[2] = v4831
			v4829[3] = v4832
			v4829[4] = "inverse"
			v4825(v4826, v4827(v4828, v4829))
			v4825 = v560.set
			v4826 = "spammer_full"
			v4827 = v560.get
			v4828 = "spammer_full"
			v4829 = table.create(8)
			v4830 = "balloon"
			v4831 = "tiny"
			v4832 = "rocket"
			v4829[1] = v4830
			v4829[2] = v4831
			v4829[3] = v4832
			v4829[4] = "ragdoll"
			v4829[5] = "inverse"
			v4829[6] = "jail"
			v4829[7] = "morph"
			v4829[8] = "jumpscare"
			v4825(v4826, v4827(v4828, v4829))
			v4825 = nil
			v4826 = _FH_NV

			v4827 = function()
				local v4860 = {}
				v560.get("spammer_semi", v4860)
				local v4861
				v4861 = type(v4860) == "table"
				if not v4861 then
					v4861 = { "balloon", "tiny", "rocket", "inverse" }
				end
				return v4861
			end

			v4826 = v4826(v4827)
			v4826 = nil
			v4827 = _FH_NV

			v4828 = function()
				local v4862 = {}
				v560.get("spammer_full", v4862)
				local v4863
				v4863 = type(v4862) == "table"
				if not v4863 then
					v4863 = {
						"balloon",
						"tiny",
						"rocket",
						"ragdoll",
						"inverse",
						"jail",
						"morph",
						"jumpscare"
					}
				end
				return v4863
			end

			v4827 = v4827(v4828)
			v4827 = nil
			v4828 = _FH_NV
			v4829 = function()
			end
			v4828 = v4828(v4829)
			v4828 = {}
			v4829 = {}
			v4830 = nil
			v4831 = _FH_NV

			v4832 = function()
				local AdminPanel5 = v4837.LocalPlayer.PlayerGui:FindFirstChild("AdminPanel")
				if not AdminPanel5 then
					return nil, nil
				end
				local AdminPanel6 = AdminPanel5:FindFirstChild("AdminPanel")
				if not AdminPanel6 then
					return nil, nil
				end
				local Content3 = AdminPanel6:FindFirstChild("Content")
				local Profiles3 = AdminPanel6:FindFirstChild("Profiles")
				if Content3 then
					while Profiles3 do
						Content3:FindFirstChild("ScrollingFrame")
						Profiles3:FindFirstChild("ScrollingFrame")
					end
				end
				return nil, nil
			end

			v4831 = v4831(v4832)
			v4831 = nil
			v4832 = _FH_NV

			local function v4839(...)
				local v4864 = nil
				local v4865 = type(getconnections)
				if v4865 ~= "function" then
					return v4865
				end
				local v4866, v4867
				v4867, v4866 = pcall(getconnections, v4864)
				if v4867 then
					v4864 = type(v4866)
					if v4864 == "table" then
						local v4868, v4869
						v4864, v4869, v4868 = ipairs(v4866)
						while true do
							local v4870
							v4868, v4870 = v4864(v4869, v4868)
							if v4868 == nil then
								break
							else
								local v4871 = type
								local Function5 = v4870.Function
								if v4871(Function5) == "function" then
									table.insert(Function5, v4870.Function)
								end
							end
						end
					end
				end
				return v4864
			end

			v4832 = v4832(v4839)
			v4832 = nil

			local function v4840(...)
				for _, v4872 in ipairs(nil) do
					task.spawn(v4872)
				end
			end

			v4832 = _FH_NV(v4840)

			local function v4841(...)
				if _G._FH_IsOnCooldown then
					return _G._FH_IsOnCooldown(nil)
				end
				return false
			end

			_FH_NV(v4841)

			local function v4842(...)
				local v4873 = nil
				if _G._FH_FireAdmin and _G._FH_ResolveAdminRemote and _G._FH_ResolveAdminRemote() then
					for _, v4874 in ipairs(nil) do
						local v4875 = nil
						local v4876 = v4874
						local function v4877()
						end
						task.spawn(_FH_NV(v4877))
					end
					return
				end
				local v4878, v4879
				v4879, v4878 = v4830()
				if not (v4879 and v4878) then
					return
				end
				local FindFirstChild27 = v4878.FindFirstChild
				local Name6 = (nil).Name
				if not FindFirstChild27(v4878, Name6) then
					return
				end
				for _, _ in ipairs(Name6) do
					local FindFirstChild28 = v4879:FindFirstChild(v4873)
					if FindFirstChild28 then
						task.spawn(v4832, v4831(FindFirstChild28))
						v4873 = v4832
						task.spawn(v4873, v4831(FindFirstChild28))
					end
				end
			end

			local TextButton20 = Instance.new("TextButton")
			TextButton20.Size = UDim2.new(0, 20, 0, 20)
			TextButton20.Position = UDim2.new(1, -48, 0.5, -10)
			TextButton20.BackgroundColor3 = v558.Soft
			v65(TextButton20, "Soft")
			TextButton20.Text = "⚙"
			TextButton20.TextColor3 = v558.TextDim
			TextButton20.TextSize = 12
			TextButton20.Font = Enum.Font.GothamBold
			TextButton20.AutoButtonColor = false
			TextButton20.ZIndex = 53
			TextButton20.Parent = v3076.header
			v561(TextButton20, 6)

			local function v4843()
				({}).TextColor3 = v558.Text
			end

			TextButton20.MouseEnter:Connect(_FH_NV(v4843))
			local MouseLeave5 = TextButton20.MouseLeave
			local Connect17 = MouseLeave5.Connect

			local function v4844()
				({}).TextColor3 = v558.TextDim
			end

			Connect17(MouseLeave5, _FH_NV(v4844))
			Connect17(
				v3076.body,
				"⚙ to edit cmds  •  right-click Closest to bind",
				9,
				v558.TextMute,
				Enum.Font.Gotham
			)
			UDim2.new(1, -4, 0, 20)
			Enum.TextXAlignment.Center(
				v3076.body,
				"PLAYERS",
				9,
				v558.TextDim,
				Enum.Font.GothamBold
			)
			UDim2.new(1, -4, 0, 14)
			local ScrollingFrame4 = Instance.new("ScrollingFrame")
			v4833 = 176
			ScrollingFrame4.Size = UDim2.new(1, -4, 0, v4833)
			ScrollingFrame4.BackgroundTransparency = 1
			ScrollingFrame4.BorderSizePixel = 0
			ScrollingFrame4.ScrollBarThickness = 3
			ScrollingFrame4.ScrollBarImageColor3 = v558.White
			v4833 = 0
			ScrollingFrame4.CanvasSize = UDim2.new(0, 0, 0, v4833)
			ScrollingFrame4.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ScrollingFrame4.ZIndex = 52
			ScrollingFrame4.Parent = v3076.body
			local UIListLayout6 = Instance.new("UIListLayout")
			UIListLayout6.Padding = UDim.new(0, 4)
			local Center2 = Enum.HorizontalAlignment.Center
			UIListLayout6.HorizontalAlignment = Center2
			UIListLayout6.Parent = ScrollingFrame4
			v4833 = 2
			v4834 = 0
			Center2(ScrollingFrame4, 2, v4833, v4834, 0)
			local Frame51 = Instance.new("Frame")
			v4833 = -4
			v4834 = 0
			UDim2.new(1, v4833, v4834, 28)
			local TextButton21 = Instance.new("TextButton")
			v4833 = 1
			v4834 = 0
			TextButton21.Size = UDim2.new(v4833, v4834, 1, 0)
			TextButton21.BackgroundColor3 = v558.SideActive
			TextButton21.BorderSizePixel = 0
			TextButton21.Text = "Spam Closest"
			TextButton21.TextSize = 11
			TextButton21.Font = Enum.Font.GothamBold
			TextButton21.TextColor3 = v558.Text
			TextButton21.AutoButtonColor = false
			TextButton21.ZIndex = 53
			TextButton21.Parent = Frame51
			v4833 = TextButton21
			v4834 = 8
			v561(v4833, v4834)
			v4833 = TextButton21
			v4834 = 1.2
			v69(v4833, v4834, 0.3, 45)
			local MouseEnter2 = TextButton21.MouseEnter
			v4833 = MouseEnter2
			local Connect18 = MouseEnter2.Connect
			v4834 = _FH_NV

			local function v4845()
				({}).BackgroundColor3 = v558.SideHover
			end

			Connect18(v4833, v4834(v4845))
			local MouseLeave6 = TextButton21.MouseLeave
			v4833 = MouseLeave6
			local Connect19 = MouseLeave6.Connect
			v4834 = _FH_NV

			local function v4846()
				({}).BackgroundColor3 = v558.SideActive
			end

			Connect19(v4833, v4834(v4846))
			v4833 = "TextLabel"
			local v4847 = Instance.new(v4833)
			v4833 = UDim2
			v4833 = v4833.new
			v4834 = 0
			v4833 = v4833(v4834, 60, 0, 14)
			v4847.Size = v4833
			v4833 = UDim2
			v4833 = v4833.new
			v4834 = 1
			v4833 = v4833(v4834, -64, 0.5, -7)
			v4847.Position = v4833
			v4847.BackgroundTransparency = 1
			v4847.Text = ""
			v4847.TextSize = 9
			v4833 = Enum
			v4833 = v4833.Font
			v4833 = v4833.GothamBold
			v4847.Font = v4833
			v4833 = v558.TextDim
			v4847.TextColor3 = v4833
			v4833 = Enum
			v4833 = v4833.TextXAlignment
			v4833 = v4833.Center
			v4847.TextXAlignment = v4833
			v4847.ZIndex = 54
			v4847.Parent = TextButton21
			v4833 = nil
			v4834 = _FH_NV

			local function v4848()
				local LocalPlayer43 = v4837.LocalPlayer
				local v4880 = LocalPlayer43.Character
				if v4880 then
					v4880 = LocalPlayer43.Character:FindFirstChild("HumanoidRootPart")
				end
				if not v4880 then
					return nil
				end
				local v4881 = math.huge
				local v4882, v4883, v4884
				v4884, v4883, v4882 = ipairs(v4837:GetPlayers())
				while true do
					local v4885
					v4882, v4885 = v4884(v4883, v4882)
					if v4882 == nil then
						break
					elseif v4885 ~= LocalPlayer43 then
						local v4886 = v4885.Character
						if v4886 then
							v4886 = v4885.Character:FindFirstChild("HumanoidRootPart")
						end
						if v4886 then
							local Magnitude10 = (v4886.Position - v4880.Position).Magnitude
							if Magnitude10 < v4881 then
								v4881 = Magnitude10
							end
						end
					end
				end
				return v4884
			end

			v4834 = v4834(v4848)
			v4833 = v4834
			v4834 = "semi"

			local function v4849()
				local v4887 = v4833()
				if not v4887 then
					return
				end
				local v4888 = v4834
				local v4889
				v4889 = v4888 == "semi"
				if v4889 then
					v4889 = "full"
				end

				local function v4890(...)
					local v4891 = v4888
					if v4891 == "semi" then
						v4891(nil, v4825())
					else
						v4891(nil, v4826())
					end
				end

				task.spawn(_FH_NV(v4890))
			end

			local function v4850(...)
				if v4833() then
					task.spawn(nil, nil, v4825())
				end
			end

			_G._FH_RunSemiAP = _FH_NV(v4850)
			local Activated5 = TextButton21.Activated
			local Connect20 = Activated5.Connect
			Connect20(Activated5, v4849)
			v4835 = "Spam Closest"
			v4836 = v4849
			local v4851 = Connect20(TextButton21, v4847, v4835, v4836)
			local function v4852()
			end
			_FH_NV(v4852)
			v4851.refresh()

			local function v4853(...)
				local LocalPlayer44 = v4837.LocalPlayer
				if nil == LocalPlayer44 then
					return
				end
				local v4892 = LocalPlayer44:FindFirstChild("spr_" .. (nil).Name)
				if v4892 then
					return
				end
				if v4892 then
					v4892 = 44
				end
				local Frame52 = Instance.new("Frame")
				UDim2.new(1, -4, 0, nil)
				local v4893 = v561
				v4893(1, 6)
				v4893(1, v558.Line, 1, 0.3)
				local Frame53 = Instance.new("Frame")
				UDim2.new(0, 26, 0, 26)
				UDim2.new(0, 5, 0.5, -13)
				v561(0, 5)
				local v4894 = task.spawn
				local v4895 = nil

				local function v4896()
					local function v4910()
						return game:GetService("Players"):GetUserThumbnailAsync(
							v4895.UserId,
							Enum.ThumbnailType.HeadShot,
							Enum.ThumbnailSize.Size48x48
						)
					end

					local v4911, v4912
					v4912, v4911 = pcall(_FH_NV(v4910))
					if v4912 and v4911 then
						Instance.new("ImageLabel")
						UDim2.new(1, 0, 1, 0)(1, 5)
					end
				end

				v4894(v4896)
				if v4894 then
					v4894 = 11
				end
				v4896(5, (nil).Name, -13, v558.Text, Enum.Font.GothamMedium)
				UDim2.new(1, -158, 1, 0)
				UDim2.new(0, 34, 0, 0)
				local v4897 = Enum.TextTruncate.AtEnd
				if v4897 then
					v4897 = 32
				end
				local v4898 = 34
				local v4899 = nil
				if not v4897 then
					v4897 = 28
					v4898 = 34
					v4899 = nil
				end
				v4898 = "TextButton"
				local v4900 = Instance.new(v4898)
				v4898 = UDim2
				v4898 = v4898.new
				v4898 = v4898(0, 52, 0, nil)
				v4900.Size = v4898
				v4898 = UDim2
				v4898 = v4898.new
				v4898 = v4898(1, -114, 0.5, -v4897 / 2)
				v4900.Position = v4898
				v4898 = Color3
				v4898 = v4898.fromRGB
				v4898 = v4898(18, 62, 26)
				v4900.BackgroundColor3 = v4898
				v4900.BorderSizePixel = 0
				v4900.Text = "Semi"
				v4900.TextSize = 12
				v4898 = Enum
				v4898 = v4898.Font
				v4898 = v4898.GothamBold
				v4900.Font = v4898
				v4898 = v558.Green
				v4900.TextColor3 = v4898
				v4900.AutoButtonColor = false
				v4900.ZIndex = 54
				v4900.Parent = Frame52
				v4898 = v561
				v4898(v4900, 5)
				v4898(v4900, v558.Green, 1, 0.6)
				v4898 = false
				local v4901 = nil
				v4900.Activated:Connect(0.6)

				v4899 = function()
					({}).BackgroundColor3 = Color3.fromRGB(25, 85, 38)
				end

				v4900.MouseEnter:Connect(_FH_NV(v4899))

				v4899 = function()
					({}).BackgroundColor3 = Color3.fromRGB(18, 62, 26)
				end

				v4900.MouseLeave:Connect(_FH_NV(v4899))
				local TextLabel18 = Instance.new("TextLabel")
				v4899 = 0
				TextLabel18.Size = UDim2.new(1, v4899, 0, 8)
				v4899 = 0
				TextLabel18.Position = UDim2.new(0, v4899, 1, -8)
				TextLabel18.BackgroundTransparency = 1
				TextLabel18.Text = ""
				TextLabel18.TextSize = 8
				TextLabel18.Font = Enum.Font.GothamBold
				TextLabel18.TextColor3 = v558.TextDim
				local Center3 = Enum.TextXAlignment.Center
				TextLabel18.TextXAlignment = Center3
				TextLabel18.ZIndex = 55
				TextLabel18.Parent = v4900
				v4899 = TextLabel18
				local v4902 = Center3(v4900, v4899, "Semi: " .. (nil).Name, -8)
				v4899 = function()
				end
				_FH_NV(v4899)
				v4902.refresh()
				v4899 = "TextButton"
				local v4903 = Instance.new(v4899)
				v4899 = UDim2
				v4899 = v4899.new
				v4899 = v4899(0, 52, 0, nil)
				v4899 = UDim2
				v4899 = v4899.new
				v4899 = v4899(1, -56, 0.5, -v4897 / 2)
				v4899 = Color3
				v4899 = v4899.fromRGB
				v4899 = v4899(62, 14, 14)
				v4899 = Enum
				v4899 = v4899.Font
				v4899 = v4899.GothamBold
				v4899 = Color3
				v4899 = v4899.fromRGB
				v4899 = v4899(220, 80, 80)
				v4899 = v561
				v4899(v4903, 5)
				v4899(v4903, Color3.fromRGB(220, 80, 80), 1, 0.6)
				v4899 = false
				local v4904 = nil

				local function v4905(...)
					if v4899 then
						return
					end
					local v4916 = v68
					local v4917 = { BackgroundColor3 = Color3.fromRGB(180, 40, 40) }
					v4916(nil, nil, v4917)
					local delay4 = task.delay
					local _FH_NV19 = _FH_NV

					local function v4918()
						({}).BackgroundColor3 = Color3.fromRGB(62, 14, 14)
					end

					delay4(0.15, _FH_NV19(v4918))
					task.spawn(v4842, _FH_NV19, v4826())
					local function v4919()
					end
					task.delay(0, _FH_NV(v4919))
				end

				v4903.Activated:Connect(v4905)

				local function v4906()
					({}).BackgroundColor3 = Color3.fromRGB(90, 20, 20)
				end

				v4903.MouseEnter:Connect(_FH_NV(v4906))

				local function v4907()
					({}).BackgroundColor3 = Color3.fromRGB(62, 14, 14)
				end

				v4903.MouseLeave:Connect(_FH_NV(v4907))
				local TextLabel19 = Instance.new("TextLabel")
				UDim2.new(1, 0, 0, 8)
				UDim2.new(0, 0, 1, -8)
				local v4908 = Enum.TextXAlignment.Center(
					v4903,
					TextLabel19,
					"Full: " .. (nil).Name,
					v4905
				)
				local function v4909()
				end
				_FH_NV(v4909)
				v4908.refresh()
			end

			v4835 = _FH_NV

			v4836 = function(...)
				local v4920, v4921, v4922, v4923
				v4923, v4922, v4921 = ipairs(ScrollingFrame4:GetChildren())
				local v4924 = v4922
				while true do
					local v4925
					v4921, v4925 = v4923(v4922, v4921)
					if v4921 == nil then
						break
					elseif v4925:IsA("Frame") then
						v4925:Destroy()
						v4920 = v4925
						v4924 = v4921
					else
						v4920 = v4925
						v4924 = v4921
					end
				end
				for _, _ in ipairs(v4924:GetPlayers()) do
					v4853(v4920)
				end
			end

			v4835 = v4835(v4836)
			local v4854 = v4835
			v4835 = v4837.PlayerAdded
			v4836 = v4835
			v4835 = v4835.Connect

			local function v4855()
				if v3076.panel.Visible then
				end
			end

			v4835(v4836, _FH_NV(v4855))
			v4835 = v4837.PlayerRemoving
			v4836 = v4835
			v4835 = v4835.Connect

			local function v4856(...)
				local FindFirstChild29 = ({}):FindFirstChild("spr_" .. nil)
				if FindFirstChild29 then
					FindFirstChild29:Destroy()
				end
			end

			v4835(v4836, _FH_NV(v4856))
			v4835 = false
			v4836 = nil

			local function v4857(...)
				(nil)("Customize Semi / Full", 490, 60, 248)
				local ScrollingFrame5 = Instance.new("ScrollingFrame")
				UDim2.new(1, -4, 0, 300)
				UDim2.new(0, 0, 0, 0)
				Instance.new("UIListLayout")
				UDim.new(0, 3)
				Enum.HorizontalAlignment.Center(0, 4, 4, 2, 2)

				local function v4926(...)
					v562(nil, nil, 9, nil, Enum.Font.GothamBold)
					UDim2.new(1, -4, 0, 16)
					return Enum.TextXAlignment.Left
				end

				_FH_NV(v4926)

				local function v4927(...)
					local v4936
					v4936 = not (table.find((nil)(), nil) == nil)
					Instance.new("Frame")
					UDim2.new(1, -4, 0, 24)
					local Card = v558.Card
					Card(1, 5)
					Card(1, 5, 10, v558.Text, Enum.Font.GothamMedium)
					UDim2.new(1, -50, 1, 0)
					UDim2.new(0, 8, 0, 0)
					local TextButton22 = Instance.new("TextButton")
					UDim2.new(0, 36, 0, 16)
					UDim2.new(1, -42, 0.5, -8)
					v4936 = v4936 and v558.Text or v558.TextMute
					v4936(1, 4)
					local v4937, v4938, v4939

					local function v4940()
						v4937()
						if table.find then
						end
						v4939()
					end

					TextButton22.Activated:Connect(_FH_NV(v4940))
				end

				local v4928 = v4825()
				local v4929 = v4826()
				local function v4930()
				end
				_FH_NV(v4930)("SEMI COMMANDS", v558.Green)
				local v4931, v4932, v4933
				v4933, v4932, v4931 = ipairs(v4838)
				while true do
					local _
					v4931, _ = v4933(v4932, v4931)
					if v4931 == nil then
						break
					else
						local function v4934()
							return v4928
						end

						v4927(nil, _FH_NV(v4934), v4934)
					end
				end
				v4933("FULL COMMANDS", Color3.fromRGB(220, 80, 80))
				for _, _ in ipairs(v4838) do
					local function v4935()
						return v4929
					end

					v4927(80, _FH_NV(v4935), v4935)
				end
			end

			local function v4858()
				local v4941 = v4836
				if not v4941 then
					v4941()
				end
				if v4835 then
					local v4942
					v4942.BackgroundColor3 = v558.SideActive
					v4942.TextColor3 = v558.Text
				else
					local v4943
					v4943.BackgroundColor3 = v558.Soft
					v4943.TextColor3 = v558.TextDim
				end
			end

			TextButton20.Activated:Connect(_FH_NV(v4858))
			local _G17 = _G
			local v4859 = { panel = v3076.panel, refresh = v4854 }
			_G17.GammaSpamPanel = v4859
			v4854()
		end

		v3077()
		_FH_yield()

		local function v3078(...)
			local Players10 = game:GetService("Players")
			if not Players10.LocalPlayer then
				Players10.PlayerAdded:Wait()
			end
			local LocalPlayer45 = Players10.LocalPlayer
			local PlayerGui8 = LocalPlayer45:WaitForChild("PlayerGui", 15)
			if not PlayerGui8 then
				return
			end
			local AdminPanel7 = PlayerGui8:WaitForChild("AdminPanel", 15)
			if not AdminPanel7 then
				return
			end
			local TweenService2 = game:GetService("TweenService")
			local HttpService3 = game:GetService("HttpService")
			local v4944 = {}

			local function v4945()
				if writefile then
					local function v4994(...)
						writefile("DatShawnSpamConfig.json", HttpService3:JSONEncode(nil))
					end

					pcall(_FH_NV(v4994))
				end
			end

			local v4946, v4947, v4948, v4949, v4950, v4951, v4952, v4953
			if isfile then
				v4946 = nil
				v4947 = nil
				v4948 = nil
				v4949 = nil
				v4950 = nil
				v4951 = nil
				v4952 = nil
				v4953 = nil
				if isfile("DatShawnSpamConfig.json") then
					local pcall33 = pcall
					local JSONDecode = HttpService3.JSONDecode
					local readfile2 = readfile
					local v4954 = "DatShawnSpamConfig.json"
					local _, v4955
					v4955, _ = pcall33(JSONDecode, nil, readfile2(v4954))
					v4946 = readfile2
					v4947 = v4954
					v4948 = nil
					v4949 = nil
					v4950 = nil
					v4951 = nil
					v4952 = nil
					v4953 = nil
					if v4955 then
						v4946 = readfile2
						v4947 = v4954
						v4948 = nil
						v4949 = nil
						v4950 = nil
						v4951 = nil
						v4952 = nil
						v4953 = nil
						if type(readfile2) == "table" then
							local v4956, v4957, v4958
							v4958, v4957, v4956 = pairs(readfile2)
							local v4959 = v4957
							local v4960 = v4956
							while true do
								local v4961
								v4960, v4961 = v4958(v4957, v4960)
								v4946 = v4959
								v4947 = v4956
								v4948 = nil
								v4949 = nil
								v4950 = nil
								v4951 = nil
								v4952 = nil
								v4953 = nil
								if v4960 == nil then
									break
								else
									v4956 = v4961
									v4959 = v4960
								end
							end
						end
					end
				end
			end
			local v4962 = table.create(8)
			v4946 = "balloon"
			v4947 = "tiny"
			v4948 = "rocket"
			v4949 = "inverse"
			v4950 = "ragdoll"
			v4962[1] = v4946
			v4962[2] = v4947
			v4962[3] = v4948
			v4962[4] = v4949
			v4962[5] = v4950
			v4962[6] = "jail"
			v4962[7] = "morph"
			v4962[8] = "jumpscare"
			v4946 = nil
			v4947 = _FH_NV

			v4948 = function(...)
				local v4995 = nil
				local v4996 = type(getconnections)
				if v4996 ~= "function" then
					return v4996
				end
				local v4997, v4998
				v4998, v4997 = pcall(getconnections, v4995)
				if v4998 then
					v4995 = type(v4997)
					if v4995 == "table" then
						local v4999, v5000
						v4995, v5000, v4999 = ipairs(v4997)
						while true do
							local v5001
							v4999, v5001 = v4995(v5000, v4999)
							if v4999 == nil then
								break
							else
								local v5002 = type
								local Function6 = v5001.Function
								if v5002(Function6) == "function" then
									table.insert(Function6, v5001.Function)
								end
							end
						end
					end
				end
				return v4995
			end

			v4947 = v4947(v4948)
			v4946 = v4947
			v4947 = nil
			v4948 = _FH_NV

			v4949 = function(...)
				for _, v5003 in ipairs(nil) do
					task.spawn(v5003)
				end
			end

			v4948 = v4948(v4949)
			v4947 = v4948
			v4948 = nil
			v4949 = _FH_NV

			v4950 = function()
				local v5004 = AdminPanel7
				local v5005 = "AdminPanel"
				local FindFirstChild30 = v5004:FindFirstChild(v5005)
				if v5004 then
					v5004 = FindFirstChild30:FindFirstChild("Content")
					v5005 = FindFirstChild30
				end
				if v5005 then
					v5005 = FindFirstChild30:FindFirstChild("Profiles")
				end
				if v5004 then
					while v5005 do
						v5004:FindFirstChild("ScrollingFrame")
						v5005:FindFirstChild("ScrollingFrame")
					end
				end
			end

			v4949 = v4949(v4950)
			v4948 = v4949
			v4949 = nil
			v4950 = _FH_NV
			local v4963 = {}
			local v4964 = {}
			local function v4965()
			end
			v4950 = v4950(v4965)
			v4949 = v4950
			v4950 = nil
			local function v4966()
			end
			v4950 = _FH_NV(v4966)

			local function v4967()
				for _, v5006 in ipairs(v4962) do
					if v4944.Semi[v5006] then
					end
				end
			end

			local v4968 = _FH_NV(v4967)

			local function v4969()
				for _, v5007 in ipairs(v4962) do
					if v4944.Full[v5007] then
					end
				end
			end

			local v4970 = _FH_NV(v4969)

			local function v4971(...)
				local v5008 = nil

				local function v5009()
					while v5008 and v5008.Parent do
						task.wait(0.12)
						local TextLabel22 = Instance.new("TextLabel")
						UDim2.fromOffset(math.random(8, 14), math.random(8, 14))
						UDim2.new(math.random(), 0, -0.05, 0)
						Color3.new(1, 1, 1)
						local v5010 = math.random(-15, 15) / 100
						local Create19 = v5010.Create
						local v5011 = TweenInfo.new(
							math.random(25, 40) / 10,
							Enum.EasingStyle.Linear
						)
						UDim2.new(40, 0, 1.1, 0)
						local v5012 = Create19(v5010, 15, v5011, {})
						v5012:Play()
						local v5013 = TextLabel22

						local function v5014()
							v5013:Destroy()
						end

						v5012.Completed:Connect(_FH_NV(v5014))
					end
				end

				task.spawn(v5009)
			end

			local ScreenGui = Instance.new("ScreenGui", nil)
			ScreenGui.Name = "DatShawnSpam"
			ScreenGui.ResetOnSpawn = false
			ScreenGui.DisplayOrder = 999
			local Frame54 = Instance.new("Frame", ScreenGui)
			Frame54.Size = UDim2.fromScale(0.18, 0.36)
			Frame54.Position = UDim2.fromScale(0.41, 0.32)
			Frame54.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Frame54.Active = true
			Frame54.Draggable = true
			Frame54.ClipsDescendants = true
			Frame54.ZIndex = 10
			Frame54.Visible = false
			Instance.new("UICorner", Frame54)
			UDim.new(0, 24)
			Instance.new("UIGradient", Frame54)
			local new38 = ColorSequence.new
			local v4972 = table.create(1)
			v4951 = 25
			v4952 = 25
			ColorSequenceKeypoint.new(0, Color3.fromRGB(v4951, v4952, 25))
			local new39 = ColorSequenceKeypoint.new
			v4951 = Color3
			v4951 = v4951.fromRGB
			v4952 = 45
			new39(1, v4951(v4952, 45, 45))
			new38(v4972)
			v4971(Frame54)
			local TextLabel20 = Instance.new("TextLabel", Frame54)
			v4951 = 32
			TextLabel20.Size = UDim2.new(1, 0, 0, v4951)
			TextLabel20.BackgroundTransparency = 1
			TextLabel20.Text = "DatShawn Spam"
			TextLabel20.Font = Enum.Font.FredokaOne
			TextLabel20.TextScaled = true
			TextLabel20.TextColor3 = Color3.fromRGB(240, 240, 240)
			TextLabel20.ZIndex = 15
			local ScrollingFrame6 = Instance.new("ScrollingFrame", Frame54)
			v4951 = 0
			v4952 = 36
			ScrollingFrame6.Position = UDim2.new(0, 8, v4951, v4952)
			v4951 = 1
			v4952 = -42
			ScrollingFrame6.Size = UDim2.new(1, -16, v4951, v4952)
			ScrollingFrame6.BackgroundTransparency = 1
			ScrollingFrame6.ScrollBarImageTransparency = 0.8
			ScrollingFrame6.ZIndex = 10
			local UIListLayout7 = Instance.new("UIListLayout", ScrollingFrame6)
			v4951 = 6
			UIListLayout7.Padding = UDim.new(0, v4951)
			v4951 = "AbsoluteContentSize"
			local GetPropertyChangedSignal = UIListLayout7:GetPropertyChangedSignal(v4951)
			local Connect21 = GetPropertyChangedSignal.Connect
			v4951 = _FH_NV

			v4952 = function()
				ScrollingFrame6.CanvasSize = UDim2.new(
					0,
					0,
					0,
					UIListLayout7.AbsoluteContentSize.Y + 6
				)
			end

			Connect21(GetPropertyChangedSignal, v4951(v4952))
			v4951 = ScreenGui
			local TextButton23 = Instance.new("TextButton", v4951)
			v4951 = 96
			v4952 = 30
			TextButton23.Size = UDim2.fromOffset(v4951, v4952)
			v4951 = 0.04
			v4952 = 0
			TextButton23.Position = UDim2.new(v4951, v4952, 0.4, 0)
			v4951 = 30
			v4952 = 30
			TextButton23.BackgroundColor3 = Color3.fromRGB(v4951, v4952, 30)
			TextButton23.BackgroundTransparency = 0
			TextButton23.AutoButtonColor = false
			TextButton23.Font = Enum.Font.FredokaOne
			TextButton23.Text = "DatShawn Spam"
			v4951 = 255
			v4952 = 255
			TextButton23.TextColor3 = Color3.fromRGB(v4951, v4952, 255)
			TextButton23.TextTransparency = 0
			TextButton23.TextScaled = true
			TextButton23.Draggable = true
			TextButton23.Active = true
			TextButton23.ZIndex = 100
			TextButton23.Visible = false
			v4951 = "UICorner"
			v4952 = TextButton23
			local v4973 = Instance.new(v4951, v4952)
			v4951 = UDim
			v4951 = v4951.new
			v4952 = 0
			v4951 = v4951(v4952, 12)
			v4973.CornerRadius = v4951
			v4951 = "UIStroke"
			v4952 = TextButton23
			local v4974 = Instance.new(v4951, v4952)
			v4951 = Color3
			v4951 = v4951.fromRGB
			v4952 = 255
			v4951 = v4951(v4952, 255, 255)
			v4974.Color = v4951
			v4974.Thickness = 1.5
			v4951 = Enum
			v4951 = v4951.ApplyStrokeMode
			v4951 = v4951.Border
			v4974.ApplyStrokeMode = v4951
			v4951 = false
			v4952 = nil
			local function v4975()
			end
			TextButton23.MouseButton1Down:Connect(_FH_NV(v4975))

			local function v4976()
				if v4952 and 6 < (TextButton23.AbsolutePosition - v4952).Magnitude then
				end
			end

			TextButton23:GetPropertyChangedSignal("AbsolutePosition"):Connect(_FH_NV(v4976))
			local Frame55 = Instance.new("Frame", ScreenGui)
			Frame55.Size = UDim2.fromOffset(230, 260)
			Frame55.Position = UDim2.fromScale(0.08, 0.12)
			Frame55.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Frame55.BackgroundTransparency = 0.05
			Frame55.Visible = false
			Frame55.Draggable = true
			Frame55.Active = true
			Frame55.ZIndex = 10
			Instance.new("UICorner", Frame55).CornerRadius = UDim.new(0, 18)
			local UIStroke3 = Instance.new("UIStroke", Frame55)
			UIStroke3.Color = Color3.fromRGB(163, 163, 163)
			UIStroke3.Thickness = 1
			local UIGradient5 = Instance.new("UIGradient", Frame55)
			local new40 = ColorSequence.new
			local v4977 = table.create(1)
			v4953 = 25
			ColorSequenceKeypoint.new(0, Color3.fromRGB(v4953, 25, 25))
			local new41 = ColorSequenceKeypoint.new
			v4953 = Color3
			v4953 = v4953.fromRGB
			new41(1, v4953(45, 45, 45))
			UIGradient5.Color = new40(v4977)
			v4971(Frame55)
			local TextLabel21 = Instance.new("TextLabel", Frame55)
			v4953 = 24
			TextLabel21.Size = UDim2.new(1, 0, 0, v4953)
			v4953 = 4
			TextLabel21.Position = UDim2.new(0, 0, 0, v4953)
			TextLabel21.Text = "Semi  |  CFG  |  Full"
			TextLabel21.Font = Enum.Font.FredokaOne
			TextLabel21.TextScaled = true
			TextLabel21.TextColor3 = Color3.fromRGB(220, 220, 220)
			TextLabel21.BackgroundTransparency = 1
			TextLabel21.ZIndex = 20
			local Frame56 = Instance.new("Frame", Frame55)
			v4953 = 1
			Frame56.Size = UDim2.new(0.48, -4, v4953, -34)
			v4953 = 0
			Frame56.Position = UDim2.new(0, 4, v4953, 30)
			Frame56.BackgroundTransparency = 1
			Frame56.ZIndex = 20
			local UIListLayout8 = Instance.new("UIListLayout", Frame56)
			v4953 = 3
			UIListLayout8.Padding = UDim.new(0, v4953)
			UIListLayout8.HorizontalAlignment = Enum.HorizontalAlignment.Center
			v4953 = Frame55
			local Frame57 = Instance.new("Frame", v4953)
			v4953 = 0.48
			Frame57.Size = UDim2.new(v4953, -4, 1, -34)
			v4953 = 0.52
			Frame57.Position = UDim2.new(v4953, 0, 0, 30)
			Frame57.BackgroundTransparency = 1
			Frame57.ZIndex = 20
			v4953 = "UIListLayout"
			local v4978 = Instance.new(v4953, Frame57)
			v4953 = UDim
			v4953 = v4953.new
			v4953 = v4953(0, 3)
			v4978.Padding = v4953
			v4953 = Enum
			v4953 = v4953.HorizontalAlignment
			v4953 = v4953.Center
			v4978.HorizontalAlignment = v4953
			v4953 = nil

			local function v4979(...)
				local v5015 = (nil)(nil, 1, 1)
				return v5015:upper() .. v5015(1, 2):lower()
			end

			v4953 = _FH_NV(v4979)

			local function v4980(...)
				local TextButton24 = Instance.new("TextButton", nil)
				UDim2.new(1, 0, 0, 26)
				v4953(1)
				local v5016 = 255
				Color3.fromRGB(255, v5016, 255)
				local v5017 = (nil)[nil]
				if v5017 then
					v5016 = 90
					v5017 = Color3.fromRGB(50, v5016, 50)
				end
				if not v5017 then
					v5016 = 55
					Color3.fromRGB(55, v5016, 55)
				end
				Instance.new("UICorner", v5016)
				UDim.new(0, 7)
				Instance.new("UIStroke", 0)
				Color3.fromRGB(160, 160, 160)
				local v5018, v5019

				local function v5020(...)
					v5018[nil] = not v5018[nil]
					local v5021 = v5018[nil]
					v5021 = v5021 and Color3.fromRGB(50, 90, 50) or Color3.fromRGB(55, 55, 55)
					v5021()
				end

				TextButton24.MouseButton1Click:Connect(_FH_NV(v5020))
			end

			local v4981, v4982, v4983
			v4983, v4982, v4981 = ipairs(v4962)
			local v4984, v4985
			while true do
				local v4986
				v4981, v4986 = v4983(v4982, v4981)
				v4985 = v4968
				v4984 = v4970
				if v4981 == nil then
					break
				else
					v4980(v4986, Frame56, v4944.Semi, v4986)
					v4980(v4986, Frame57, v4944.Full, v4986)
				end
			end

			local function v4987()
				if v4951 then
					return
				end
			end

			TextButton23.MouseButton1Click:Connect(_FH_NV(v4987))

			local function v4988(...)
				local v5022 = LocalPlayer45
				if nil == v5022 then
					return
				end
				local FindFirstChild31 = v5022.FindFirstChild
				local Name7 = (nil).Name
				if FindFirstChild31(v5022, Name7) then
					return
				end
				local Frame58 = Instance.new("Frame", Name7)
				UDim2.new(1, 0, 0, 50)
				Color3.fromRGB(35, 35, 35)
				Instance.new("UICorner", 35)
				UDim.new(0, 16)
				local ImageLabel6 = Instance.new("ImageLabel", 0)
				UDim2.new(0, 32, 0, 32)
				UDim2.new(0, 8, 0.5, -16)
				local v5023 = nil

				local function v5024(...)
					ImageLabel6.Image = (nil).GetUserThumbnailAsync(
						nil,
						v5023.UserId,
						Enum.ThumbnailType.HeadShot,
						Enum.ThumbnailSize.Size48x48
					)
				end

				pcall(_FH_NV(v5024))
				Instance.new("UICorner", v5024)
				UDim.new(1, 0)
				local Frame59 = Instance.new("Frame", 1)
				UDim2.new(0.34, 0, 1, 0)
				UDim2.new(0, 48, 0, 0)
				Instance.new("TextLabel", Frame59)
				UDim2.new(1, 0, 0.5, 0)
				Color3.fromRGB(240, 240, 240)
				Instance.new("TextLabel", Frame59)
				UDim2.new(1, 0, 0.5, 0)
				UDim2.new(0, 0, 0.5, 0)
				Color3.fromRGB(180, 180, 180)

				local function v5025()
					Instance.new("TextButton", Frame58)
					UDim2.new(0.24, 0, 0.65, 0)
					Color3.fromRGB(255, 255, 255)
					Color3.fromRGB(60, 60, 60)
					local new42 = Instance.new
					new42("UICorner", 60)
					return new42
				end

				local SEMI = "SEMI"
				local v5026 = _FH_NV(v5025)(SEMI, UDim2.new(0.5, 0, 0.18, 0))
				local FULL = SEMI("FULL", UDim2.new(0.76, 0, 0.18, 0))
				local v5027 = nil
				local function v5028()
				end
				v5026.MouseButton1Click:Connect(_FH_NV(v5028))
				local v5029 = nil
				local function v5030()
				end
				FULL.MouseButton1Click:Connect(_FH_NV(v5030))
			end

			Players10.PlayerAdded:Connect(v4988)

			local function v4989(...)
				local FindFirstChild32 = ScrollingFrame6:FindFirstChild(nil)
				if FindFirstChild32 then
					ScrollingFrame6[FindFirstChild32]:Destroy()
				end
			end

			Players10.PlayerRemoving:Connect(_FH_NV(v4989))
			for _, v4990 in ipairs(Players10:GetPlayers()) do
				v4988(v4990)
			end

			local function v4991(...)
				if not nil then
					return
				end
				local v5031 = v560.get(nil, nil)
				local v5032 = type(nil)
				local v5033 = v5032
				if v5032 == "table" then
					v5033 = v5032
					if #v5031 == 4 then
						v5033 = UDim2.new(v5031[1], v5031[2], v5031[3], v5031[4])
					end
				end
				v5033 = 0
				local Position11 = (nil).GetPropertyChangedSignal(nil, "Position")
				local v5034, v5035

				local function v5036()
					local v5039 = v5033
					local Position12 = v5034.Position

					local function v5040()
						if v5039 ~= v5033 then
							return
						end

						local function v5041()
							local v5042 = table.create(4)
							local Scale8 = Position12.X.Scale
							local Offset8 = Position12.X.Offset
							local Scale9 = Position12.Y.Scale
							local Offset9 = Position12.Y.Offset
							v5042[1] = Scale8
							v5042[2] = Offset8
							v5042[3] = Scale9
							v5042[4] = Offset9
						end

						pcall(_FH_NV(v5041))
					end

					task.delay(0.4, v5040)
				end

				Position11:Connect(v5036)
				local v5037 = nil

				local function v5038(...)
					if type(nil) == "table" and false then
						v5037.Position = UDim2.new(nil, nil, nil, nil)
					end
				end

				v547(Position11, _FH_NV(v5038))
			end

			v4991(Frame54, "datshawn_main_pos")
			v4991(TextButton23, "datshawn_bubble_pos")
			v4991(Frame55, "datshawn_config_pos")
			if _G._FH_OnLockChanged then
				local function v4992(...)
					local v5043 = true
					local function v5044()
					end
					pcall(_FH_NV(v5044))
					local v5045 = true
					local function v5046()
					end
					pcall(_FH_NV(v5046))
					local v5047 = true
					local function v5048()
					end
					pcall(_FH_NV(v5048))
				end

				_G._FH_OnLockChanged(v4992)
			end
			local _G18 = _G
			local v4993 = { gui = ScreenGui, main = Frame54, bubble = TextButton23, config = Frame55 }
			_G18.DatShawnSpamPanel = v4993
		end

		v3078()
		_FH_yield()

		local function v3079()
			local v5049 = 0.35
			local v5050 = false
			local v5051 = {}
			local v5052 = {}
			local v5053 = nil
			local v5054 = false
			local v5055 = nil
			local v5056 = _FH_NV

			local function v5057(...)
				local v5080 = nil
				while v5080 and v5080 ~= workspace do
					if v5080:IsA("Model") then
						local v5081 = v5052[v5080]
						v5080:FindFirstChildWhichIsA("Humanoid")
						v5052[v5080] = v5081
						if v5081 then
							return true
						end
						break
					end
					v5080 = v5080.Parent
				end
				return false
			end

			v5056 = v5056(v5057)
			v5055 = v5056
			v5056 = nil
			v5057 = false
			local v5058 = false

			local function v5059()
				if not v5057 then
					local function v5082(...)
						if type(hookmetamethod) ~= "function" then
							return
						end
						local v5084
						v5084 = type(newcclosure) == "function"
						if v5084 then
							v5084 = newcclosure
						end
						if not v5084 then
							local function v5085(...)
								return nil
							end

							_FH_NV(v5085)
						end
						local hookmetamethod2 = hookmetamethod
						local v5086 = v5051

						local function v5087(...)
							return v5056(nil, nil)
						end

						;(nil)(_FH_NV(v5087))
						hookmetamethod2()
					end

					pcall(v5082)
				end
				if not v5058 then
					if _G._FH_TEARDOWN then
					end

					local function v5083()
						if v5056 then
							local function v5088()
								hookmetamethod(game, "__index", v5056)
							end

							pcall(_FH_NV(v5088))
						end
					end

					table.insert(_G._FH_TEARDOWN, v5083)
				end
			end

			local function v5060()
				if v5054 then
					return
				end

				local function v5089(...)
					local v5090, v5091
					while v5054 and v5050 do
						task.wait(5)
						if not (v5054 and v5050) then
							break
						end
						local v5092 = {}
						local v5093, v5094, v5095
						v5095, v5094, v5093 = pairs(v5090)
						v5090 = v5094
						while true do
							local _
							v5093, _ = v5095(v5094, v5093)
							if v5093 == nil then
								break
							else
								v5090 = v5093
							end
						end
						local v5096 = #v5092
						if v5096 ~= 0 then
							v5090 = 1
							while v5090 <= v5096 and (v5054 and v5050) do
								local v5097 = v5090 + 50 - 1
								v5091 = math.min(v5097, v5091)
								local v5098 = v5097 - 1
								while true do
									v5098 = v5098 + 1
									if v5098 <= v5091 then
										local v5099 = v5092[v5098]
										if v5099.Parent and
											v5099.LocalTransparencyModifier ~= v5049 then
											v5099.LocalTransparencyModifier = v5049
										end
									else
										break
									end
								end
								v5090 = v5091 + 1
								if v5090 <= v5096 then
									v5091 = RunService.Heartbeat
									v5091:Wait()
								end
							end
						end
					end
				end

				task.spawn(_FH_NV(v5089))
			end

			local v5061 = nil
			local v5062 = _FH_NV
			local function v5063()
			end
			v5062 = v5062(v5063)
			v5061 = v5062
			v5062 = nil

			local function v5064(...)
				local BasePart3 = "BasePart"
				if not (nil)(nil, BasePart3) then
					return
				end
				if v5055(nil, BasePart3) then
					return
				end
			end

			v5062 = _FH_NV(v5064)

			local function v5065(...)
				local v5100 = {}
				for _, v5101 in ipairs(v48(nil)) do
					if v5101:IsA("BasePart") then
					end
				end
				local v5102 = #v5100
				if v5102 == 0 then
					return
				end
				local v5103 = nil

				local function v5104()
					local v5105 = 1
					while v5105 <= v5102 do
						local v5106 = v5105 + 75 - 1
						local v5107 = v5102
						local v5108 = math.min(v5106, v5107)
						local v5109 = v5106 - 1
						repeat
							v5109 = v5109 + 1
						until not (v5109 <= v5107)
						v5105 = v5108 + 1
						if v5105 <= v5102 then
							RunService.Heartbeat:Wait()
						end
					end
				end

				coroutine.wrap(_FH_NV(v5104))()
				_G._FH_REG_BaseXRay = BaseXRay
			end

			local function v5066()
				local Plots14 = "Plots"
				local FindFirstChild33 = workspace:FindFirstChild(Plots14)
				if not FindFirstChild33 then
					return
				end
				local v5110 = v5059
				v5110()
				v5110(Plots14)
				v5110()
				if v5053 then
					v5053:Disconnect()
				end
				local function v5111()
				end
				FindFirstChild33.DescendantAdded:Connect(_FH_NV(v5111))
			end

			local function v5067(...)
				v5061()
				if v5053 then
					v5053:Disconnect()
				end
				local v5112 = {}
				local v5113, v5114, v5115
				v5115, v5114, v5113 = pairs(nil)
				local v5116 = v5114
				while true do
					local _
					v5113, _ = v5115(v5114, v5113)
					if v5113 == nil then
						break
					else
						table.create(2)
						v5116 = v5113
					end
				end
				table.clear(v5116)
				if type(table.clear) == "function" then
					table.clear(v5052)
				end
				local v5117 = #v5112
				if v5117 == 0 then
					return
				end

				local function v5118()
					local v5119 = 1
					while v5119 <= v5117 do
						local v5120 = v5119 + 75 - 1
						local v5121 = v5117
						local v5122 = math.min(v5120, v5121)
						local v5123 = v5120 - 1
						while true do
							v5123 = v5123 + 1
							if v5123 <= v5121 then
								local v5124 = v5112[v5123]

								local function v5125()
									if v5124[1].Parent then
									end
								end

								pcall(_FH_NV(v5125))
							else
								break
							end
						end
						v5119 = v5122 + 1
						if v5119 <= v5117 then
							RunService.Heartbeat:Wait()
						end
					end
				end

				coroutine.wrap(v5118)()
			end

			local v5068 = false
			local v5069, v5070, v5071, v5072

			local function v5073(...)
				local v5126 = nil

				local function v5127()
					v5126.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
					v5126.CameraMaxZoomDistance = 400
					if v5126.CameraMinZoomDistance < 1 then
						v5126.CameraMinZoomDistance = 1
					end
				end

				pcall(_FH_NV(v5127))
			end

			local function v5074()
				local LocalPlayer46 = GetService2.LocalPlayer
				if not LocalPlayer46 then
					return
				end
				local function v5128()
				end
				pcall(_FH_NV(v5128))
				local v5129 = v5072
				local v5130 = v5129
				if not v5129 then
					v5130 = true
					local function v5131()
					end
					_FH_NV(v5131)

					local function v5132(...)
						local v5133 = nil
						while true do
							local _continue74 = false
							if v5130 then
								task.wait(0.5)
								if not (v5130 and v5050) then
									break
								end
								local LocalPlayer47 = GetService2.LocalPlayer
								if not LocalPlayer47 then
									break
								end
								local DevCameraOcclusionMode = LocalPlayer47.DevCameraOcclusionMode
								local Invisicam = Enum.DevCameraOcclusionMode.Invisicam
								if DevCameraOcclusionMode == Invisicam then
									v5133 = LocalPlayer47.CameraMaxZoomDistance
									if not (v5133 < 400 or
										0 < LocalPlayer47.CameraMinZoomDistance) then
										_continue74 = true
									end
								end
								if _continue74 then
									continue
								end
								pcall(Invisicam, v5133)
							else
								break
							end
						end
					end

					task.spawn(_FH_NV(v5132))
				end
			end

			local function v5075()
				local LocalPlayer48 = GetService2.LocalPlayer
				if v5072 then
					v5072:Disconnect()
				end
				if not (LocalPlayer48 and v5068) then
					return
				end

				local function v5134()
					LocalPlayer48.DevCameraOcclusionMode = v5069
					LocalPlayer48.CameraMaxZoomDistance = v5070
					LocalPlayer48.CameraMinZoomDistance = v5071
				end

				pcall(_FH_NV(v5134))
			end

			local function v5076()
				local _G19 = _G
				_G19()
				_G19()
			end

			local v5077 = _FH_NV(v5076)
			_G._FH_BASEXRAY_SET = v5077

			local function v5078(...)
				local clamp20 = math.clamp
				local v5135 = tonumber(nil)
				if not v5135 then
					v5135 = 0.35
				end
				clamp20(v5135, 0, 1)
				local v5136 = nil
				if v5050 then
					local v5137, v5138, v5139
					v5139, v5138, v5137 = pairs(v5135)
					v5136 = nil
					while true do
						local _
						v5137, _ = v5139(v5138, v5137)
						if v5137 == nil then
							break
						elseif v5137.Parent then
							local v5140 = v5137

							local function v5141()
								v5140.LocalTransparencyModifier = v5136
							end

							pcall(_FH_NV(v5141))
						end
					end
				end
			end

			local v5079 = { set = v5077, setTransparency = v5078 }
			return v5079
		end

		local v3080 = v3079()
		local Main = v578("Main", "Main")
		_FH_yield()

		local function v3081()
			local v5142 = {}
			local v5143 = false
			local v5144 = {}
			local v5145 = nil

			local function v5146(...)
				if not (nil).match(nil, "SubspaceTripmine(.+)") then
					return "Unknown"
				end
				local v5161 = GetService2
				local FindFirstChild34 = v5161:FindFirstChild(nil)
				if v5161 then
					v5161 = FindFirstChild34.DisplayName
				end
				return string.format("%s (@%s)", nil, FindFirstChild34)
			end

			_FH_NV(v5146)
			v5146 = 255
			local v5147 = 80
			local v5148 = 80
			local v5149 = Color3.fromRGB(v5146, v5147, v5148)
			v5146 = nil
			v5147 = _FH_NV

			v5148 = function()
				return v5149
			end

			v5147 = v5147(v5148)
			v5146 = v5147
			v5147 = nil
			v5148 = _FH_NV

			local function v5150(...)
				v5145(nil)
				local v5162 = v5146()
				local SelectionBox2 = Instance.new("SelectionBox")
				SelectionBox2.Name = "ESP_Hitbox"
				SelectionBox2.Color3 = v5162
				SelectionBox2.LineThickness = 0.06
				SelectionBox2.SurfaceColor3 = Color3.fromRGB(0, 0, 0)
				SelectionBox2.SurfaceTransparency = 1
				Instance.new("BillboardGui")
				UDim2.new(0, 260, 0, 50)
				Vector3.new(0, 2.5, 0)
				Instance.new("TextLabel")
				UDim2.new(1, 0, 1, 0)
				Color3.fromRGB(0, 0, 0)
				return {}
			end

			v5148 = v5148(v5150)
			v5148 = nil
			v5150 = _FH_NV

			local function v5151()
				for _, v5163 in pairs(v5142) do
					if v5163.selectionBox and v5163.selectionBox.Parent then
						v5163.selectionBox:Destroy()
					end
					if v5163.billboardGui and v5163.billboardGui.Parent then
						v5163.billboardGui:Destroy()
					end
				end
				table.clear(v5142)
			end

			v5150 = v5150(v5151)
			v5150 = nil
			v5151 = _FH_NV

			local function v5152(...)
				local v5164 = (nil)(nil, "BasePart")
				if v5164 then
					v5164 = v5164:match("^SubspaceTripmine")
				end
				return v5164
			end

			v5151 = v5151(v5152)
			v5150 = v5151
			v5151 = nil
			v5152 = _FH_NV

			local function v5153()
				if not v5143 then
					return
				end
				local v5165 = v5150
				if not v5165 then
					return
				end
				if v5165 then
					return
				end
			end

			v5152 = v5152(v5153)
			v5151 = v5152
			v5152 = nil

			local function v5154(...)
				if not nil then
					return
				end
				if (nil).selectionBox and (nil).selectionBox.Parent then
					(nil).selectionBox:Destroy()
				end
				if (nil).billboardGui and (nil).billboardGui.Parent then
					(nil).billboardGui:Destroy()
				end
			end

			v5152 = _FH_NV(v5154)

			local function v5155()
				for _, v5166 in ipairs(v5144) do
					local v5167 = v5166

					local function v5168()
						v5167:Disconnect()
					end

					pcall(_FH_NV(v5168))
				end
			end

			local function v5156(...)
				local insert33 = table.insert
				local function v5169()
				end
				;(nil).ChildAdded:Connect(_FH_NV(v5169))
				insert33()
				local insert34 = table.insert
				local function v5170()
				end
				;(nil).ChildRemoved:Connect(_FH_NV(v5170))
				insert34()
				for _, v5171 in ipairs((nil).GetChildren(nil)) do
					v5151(v5171)
				end
			end

			local function v5157()
				if v5143 then
					return
				end
				local workspace2 = workspace
				local ToolsAdds = "ToolsAdds"
				if workspace2:FindFirstChild(ToolsAdds) then
					workspace2(ToolsAdds)
				end
				local insert35 = table.insert
				local function v5172()
				end
				workspace.ChildAdded:Connect(_FH_NV(v5172))
				insert35()
			end

			local v5158 = nil

			local function v5159()
				local v5173 = v5143
				if not v5173 then
					return
				end
				v5173()
				v5148()
			end

			v5158 = _FH_NV(v5159)

			local function v5160()
				v5157()
			end

			return (_FH_NV(v5160))
		end

		local v3082 = v3081()
		_G._FH_REG_MineESP = v3082
		_G._FH_REG_BrainrotESP = v579
		v2932 = "Visual"
		local Visual = v578("Visual", v2932)
		v2932 = "Player"
		v2953 = "Player"
		local v3083 = v578(v2932, v2953)
		v2932 = v578
		v2953 = "Utils"
		v3040 = "Utils"
		v2932 = v2932(v2953, v3040)
		v2953 = v578
		v3040 = "Config"
		v3041 = "Config"
		v2953 = v2953(v3040, v3041)
		v3040 = v580
		v3041 = Main.scroll
		v2959 = "AUTO GRABS"
		v3040(v3041, v2959)
		v3040 = false
		v3041 = nil
		v2959 = nil
		v3074 = nil
		v3075 = nil
		v2960 = _FH_NV

		local function v3084()
			if v3041 then
				v3041.set(false)
			end
			if v2959 then
				v2959.set(false)
			end
			if v3074 then
				v3074.set(false)
			end
		end

		v2960 = v2960(v3084)
		v3075 = v2960
		v2960 = v570
		local scroll = Main.scroll
		v2961 = "Auto Grab Nearest"
		v2971 = "Grab the nearest brainrot in range"
		v2970 = _FH_NV

		local function v3085(...)
			v2842.setNearest(nil)
			v2842.setFast(false)
			v3075("n")
			v2842.setFast(false)
		end

		v2960 = v2960(scroll, v2961, v2971, v2970(v3085))
		v3041 = v2960
		v2960 = v570
		local scroll2 = Main.scroll
		v2961 = "Auto Steal Best"
		v2971 = "Steal the highest gen brainrot in other plots"
		v2970 = _FH_NV

		local function v3086(...)
			v2842.setBest(nil)
			v2842.setFast(false)
			v3075("b")
			v2842.setFast(false)
		end

		v2960 = v2960(scroll2, v2961, v2971, v2970(v3086))
		v2959 = v2960
		v2960 = v570
		local scroll3 = Main.scroll
		v2961 = "Auto Steal Priority"
		v2971 = "Only steal the animals you pick"
		v2970 = _FH_NV

		local function v3087(...)
			v2842.setPriorityGrab(nil)
			v2842.setFast(false)
			v3075("p")
			v2842.setFast(false)
		end

		v2960 = v2960(scroll3, v2961, v2971, v2970(v3087))
		v3074 = v2960
		v2960 = v2890
		v2961 = 240
		v2971 = 200
		v2970 = 196
		v2960 = v2960("Halfway Steal", v2961, v2971, v2970)
		if 1 < _FH_GAMMA_GEN then
			local panel = v2960.panel
			v2961 = v560.get
			v2971 = "toggle:Halfway Steal"
			v2970 = false
			v2961 = v2961(v2971, v2970)
			v2961 = v2961 == true
			panel.Visible = v2961
			v2961 = "panelpos:Halfway Steal"
			v2971 = nil
			if not v560.get(v2961, v2971) then
				local panel2 = v2960.panel
				v2961 = UDim2
				v2961 = v2961.new
				v2971 = 0.5
				v2970 = -98
				v2961 = v2961(v2971, v2970, 0.5, -100)
				panel2.Position = v2961
			end
		end
		v2961 = v2960.body
		v2971 = "Activate"
		v2970 = ""

		local function v3088()
			v2885.activate()
		end

		v572(v2961, v2971, v2970, _FH_NV(v3088))
		v2961 = v2960.body
		v2971 = "Steal Now"
		v2970 = ""

		local function v3089()
			v2885.execute()
		end

		v572(v2961, v2971, v2970, _FH_NV(v3089))
		v2961 = v2960.body
		v2971 = "Use Potion"
		v2970 = ""
		local function v3090()
		end
		v570(v2961, v2971, v2970, _FH_NV(v3090))
		v2961 = v2960.body
		v2971 = 32
		local v3091 = v581(v2961, v2971)
		v2961 = v562
		v2971 = v3091
		v2970 = "Method: Walk"
		v2961 = v2961(
			v2971,
			v2970,
			11,
			v558.Text,
			Enum.Font.GothamBold,
			Enum.TextXAlignment.Center
		)
		v2971 = UDim2
		v2971 = v2971.new
		v2970 = 1
		v2971 = v2971(v2970, 0, 1, 0)
		v2961.Size = v2971
		v2971 = Enum
		v2971 = v2971.TextYAlignment
		v2971 = v2971.Center
		v2961.TextYAlignment = v2971
		v2961.ZIndex = 5
		v2971 = Instance
		v2971 = v2971.new
		v2970 = "TextButton"
		v2971 = v2971(v2970)
		v2970 = UDim2
		v2970 = v2970.new
		v2970 = v2970(1, 0, 1, 0)
		v2971.Size = v2970
		v2971.BackgroundTransparency = 1
		v2971.Text = ""
		v2971.AutoButtonColor = false
		v2971.ZIndex = 8
		v2971.Parent = v3091
		v2970 = v560.get
		local v3092 = "toggle:HalfwayMethod"
		v2970 = v2970(v3092, false)
		local v3093, v3094
		if v2970 == true then
			v2970 = true
			v3094 = v3091
			v3093 = v3092
		else
			v2970 = false
			v3094 = v3091
			v3093 = v3092
		end
		v3093 = nil
		local v3095 = v2961

		local function v3096()
			local setMethod = v2885.setMethod
			local v5174 = v2970
			v5174 = v5174 and "Prime" or "Walk"
			setMethod(v5174)
			local v5175 = v2970
			v5175 = v5175 and "Prime" or "Walk"
		end

		v3093 = _FH_NV(v3096)
		v3093()

		v2968 = function()
			v3093()
			v560.set("toggle:HalfwayMethod", v2970)
		end

		v2971.Activated:Connect(_FH_NV(v2968))
		v3094 = nil

		v2961 = function()
			if v3094 then
				local function v5176()
					v3094:Destroy()
				end

				pcall(_FH_NV(v5176))
			end
		end

		v2971 = nil
		v2970 = _FH_NV
		local v3097 = v2961

		v3093 = function()
			local _leave77 = false
			local v5177 = v2885.autoWalk
			if v5177 then
				v5177 = v2885.walkPoint
			end
			if v5177 then
				local _leave76 = false
				local v5178 = v3094
				if v5178 then
					v5178 = v3094.Parent
				end
				if v5178 then
					_leave76 = true
				end
				if not _leave76 then
					v5178()
					Instance.new("Part")
					v3094.Name = "FH_WalkPointESP"
					v3094.Shape = Enum.PartType.Ball
					v3094.Size = Vector3.new(2, 2, 2)
					v3094.Anchored = true
					v3094.CanCollide = false
					v3094.CanQuery = false
					v3094.CanTouch = false
					v3094.Material = Enum.Material.Neon
					v3094.Color = v566.c1
					v3094.Transparency = 0.45
					Instance.new("Highlight")
					Color3.new(1, 1, 1)
					Instance.new("BillboardGui")
					UDim2.new(0, 100, 0, 22)
					Vector3.new(0, 2.5, 0)
					Instance.new("TextLabel")
					UDim2.new(1, 0, 1, 0)
					Color3.new(1, 1, 1)
					v3094.Parent = workspace
				end
				v3094.Position = v2885.walkPoint
				_leave77 = true
			end
			if not _leave77 then
				v5177()
			end
		end

		v2970 = v2970(v3093)
		v2971 = v2970
		v2970 = v582
		v3093 = v2960.body
		local v3098 = { "First Slot" }
		v2968 = "Second Slot"
		v2969 = "2nd Floor"
		v3098[2] = v2968
		v3098[3] = "Third Slot"
		v3098[4] = v2969
		v2968 = function()
		end
		local v3099 = v2968
		v2968 = "First Slot"
		v2970(v3093, "Steal Slot", v3098, _FH_NV(v3099), v2968)
		v2970 = v2891
		v3093 = v2960

		local function v3100()
			local v5179
			v5179 = not (v2885._semiStealCtx == nil)
			return v5179
		end

		v2970(v3093, _FH_NV(v3100))
		v3093 = v580
		v3093(Main.scroll, "EXTRAS")
		v3093 = v570
		local scroll4 = Main.scroll
		v2968 = _FH_NV
		local v3101 = v2960
		local function v3102()
		end
		v3093(scroll4, "Halfway Steal", "Semi/Instant Steal V2 panel", v2968(v3102))
		v3093 = _G
		v3093 = v3093.__AntiRagdollToggleCleanup
		if v3093 then
			v3093 = pcall
			v3093(_G.__AntiRagdollToggleCleanup)
		end
		v3093 = GetService2.LocalPlayer
		local v3103 = {
			connections = {},
			running = false
		}

		v2968 = function()
			for _, v5180 in ipairs(workspace.Plots:GetChildren()) do
				local PlotSign8 = v5180:FindFirstChild("PlotSign")
				if PlotSign8 and PlotSign8:FindFirstChild("YourBase") then
					local Enabled2 = PlotSign8.YourBase.Enabled
					if Enabled2 then
						return Enabled2
					end
				end
			end
		end

		_FH_NV(v2968)
		local v3104 = v3093

		function v3103.forceBackpack()
			local running3 = v3103.running
			if not running3 then
				return
			end
			local PlayerGui9 = running3:FindFirstChild("PlayerGui")
			if not PlayerGui9 then
				return
			end
			local BackpackGui = PlayerGui9:FindFirstChild("BackpackGui")
			if not BackpackGui then
				return
			end
			local Backpack7 = BackpackGui:FindFirstChild("Backpack")
			if not Backpack7 then
				return
			end
			if not Backpack7:FindFirstChild("ForceConnection") then
				local BoolValue = Instance.new("BoolValue")
				BoolValue.Name = "ForceConnection"
				BoolValue.Parent = Backpack7

				local function v5181()
					if not v3103.running then
						return
					end
					if Backpack7.Visible then
					end
				end

				Backpack7:GetPropertyChangedSignal("Visible"):Connect(_FH_NV(v5181))
			end
		end

		v2968 = function(...)
			for _, v5182 in ipairs(v48(nil)) do
				if v5182:IsA("BallSocketConstraint") or v5182:IsA("HingeConstraint") or
					v5182:IsA("NoCollisionConstraint") or
					v5182:IsA("Attachment") and v5182.Name:find("RagdollAttachment") then
					v5182:Destroy()
				end
			end
		end

		v3103.removeRagdollConstraints = _FH_NV(v2968)

		v2968 = function(...)
			local Humanoid16 = (nil).FindFirstChildOfClass(nil, "Humanoid")
			if (nil).FindFirstChild(nil, "HumanoidRootPart") then
			end
			if Humanoid16 then
				for _, v5183 in ipairs(v48(nil)) do
					if v5183:IsA("Motor6D") and v5183.Enabled == false then
					end
				end
				Humanoid16:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
				Humanoid16:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
				if 0 < Humanoid16.Health then
					Humanoid16:ChangeState(Enum.HumanoidStateType.Running)
				end
				workspace.CurrentCamera.CameraSubject = Humanoid16
			end
		end

		v3103.resetCharacter = _FH_NV(v2968)

		function v3103.onCharacterAdded_AR(...)
			local HumanoidRootPart7 = (nil)(nil, "HumanoidRootPart", 10)
			if not HumanoidRootPart7 then
				return
			end
			local Humanoid17 = "Humanoid"
			local v5184 = HumanoidRootPart7(nil, Humanoid17, 10)

			local function v5185(...)
				if not v3103.running then
					return
				end
				if (nil).IsA(nil, "BallSocketConstraint") or (nil).IsA(nil, "HingeConstraint") or
					(nil).IsA(nil, "NoCollisionConstraint") or
					(nil).IsA(nil, "Attachment") and (nil).Name:find("RagdollAttachment") then
					local v5188 = nil

					local function v5189()
						if not v3103.running then
							return
						end
						local Parent15 = v5188.Parent
						if Parent15 then
							Parent15:Destroy()
						end
					end

					task.defer(_FH_NV(v5189))
				end
			end

			Humanoid17:Connect(v5185)
			local v5186 = nil

			local function v5187()
				if not v3103.running then
					return
				end
				if v5184.PlatformStand then
					local function v5190()
						if v3103.running then
							return
						end
					end

					task.defer(_FH_NV(v5190))
				end
			end

			local Connect22 = v5184:GetPropertyChangedSignal("PlatformStand"):Connect(v5187)
			v3103.removeRagdollConstraints(Connect22)
			v3103.resetCharacter(Connect22)
		end

		local v3105 = v3093

		function v3103.enable()
			local running4 = v3103.running
			local v5191 = running4
			if running4 then
				return
			end
			v3103.running = true
			v5191 = 0

			local function v5192(...)
				if v64() then
					return
				end
				if v5191 < 0.1 then
					return
				end
				local Character34 = v3105.Character
				if not Character34 then
					return
				end
				local Humanoid18 = Character34:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart8 = Character34:FindFirstChild("HumanoidRootPart")
				if not (Humanoid18 and HumanoidRootPart8) then
					return
				end
				local GetState2 = Humanoid18:GetState()
				local v5195
				v5195 = GetState2 == Enum.HumanoidStateType.Physics
				if not v5195 then
					v5195 = GetState2 == Enum.HumanoidStateType.Ragdoll
				end
				if not v5195 then
					v5195 = GetState2 == Enum.HumanoidStateType.FallingDown
				end
				local RagdollEndTime = (nil).GetAttribute(nil, "RagdollEndTime")
				if RagdollEndTime and 0 < RagdollEndTime - workspace:GetServerTimeNow() then
					v5195 = true
				end
				if v5195 then
					local function v5196()
						v3105:SetAttribute("RagdollEndTime", workspace:GetServerTimeNow())
					end

					pcall(v5196)
					v3103.removeRagdollConstraints(v5196)
					for _, v5197 in ipairs(v48(nil)) do
						if v5197:IsA("Motor6D") and v5197.Enabled == false then
						end
					end
					if 0 < Humanoid18.Health then
						Humanoid18:ChangeState(Enum.HumanoidStateType.Running)
					end
					HumanoidRootPart8.Anchored = false
					HumanoidRootPart8.Velocity = Vector3.zero
				end
			end

			RunService.Heartbeat:Connect(_FH_NV(v5192))

			local function v5193()
				task.wait(1)
				v3103.forceBackpack()
			end

			v3105.CharacterAdded:Connect(_FH_NV(v5193))
			if v3105.Character then
				task.spawn(v3103.onCharacterAdded_AR, v3105.Character)
			end

			local function v5194()
				while v3103.running do
					task.wait(0.5)
					v3103.forceBackpack()
				end
			end

			task.spawn(_FH_NV(v5194))
		end

		local v3106 = v3093

		function v3103.disable()
			v3103.running = false
			for _, v5198 in pairs(v3103.connections) do
				if v5198 then
					local v5199 = v5198

					local function v5200()
						v5199:Disconnect()
					end

					pcall(_FH_NV(v5200))
				end
			end
			v3103.connections = {}

			local function v5201(...)
				local v5202 = nil
				local Character35 = v3106.Character
				if v5202 then
					v5202 = Character35:FindFirstChildOfClass("Humanoid")
				end
				if v5202 then
					v5202:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
					v5202:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
				end
			end

			pcall(_FH_NV(v5201))
		end

		local _G14 = _G
		v2968 = _FH_NV

		local function v3107()
			v3103.disable()
		end

		v2968 = v2968(v3107)
		_G14.__AntiRagdollToggleCleanup = v2968
		v2968 = v3083.scroll
		v2969 = "No hit effects."

		local function v3108()
			v3103.enable()
		end

		v570(v2968, "Anti Ragdoll", v2969, _FH_NV(v3108))
		v3093 = v570
		local scroll5 = Main.scroll
		v2968 = _FH_NV
		local function v3109()
		end
		v3093(scroll5, "Allow Base Panel", "Open the Allow Base mini-panel.", v2968(v3109))
		v3093 = v580
		v3093(Visual.scroll, "ESP")
		v3093 = v570
		local scroll6 = Visual.scroll
		v2968 = _FH_NV
		local function v3110()
		end
		v3093(scroll6, "Brainrot ESP", "Label the best brainrot", v2968(v3110))
		v3093 = v570
		local scroll7 = Visual.scroll
		v2968 = _FH_NV
		local function v3111()
		end
		v3093(
			scroll7,
			"Brainrot Tracer",
			"Line from you to nearest/priority brainrot (matches GUI color)",
			v2968(v3111)
		)
		v3093 = v564
		if v3093 then
			v3093 = v570
			local scroll8 = Visual.scroll
			v2968 = _FH_NV
			local function v3112()
			end
			v3093(scroll8, "Timer ESP", "Show purchase timers", v2968(v3112))
			v3093 = v570
			local scroll9 = Visual.scroll
			v2968 = _FH_NV
			local function v3113()
			end
			v3093(scroll9, "FriendPanel ESP", "ALLOWED / UNALLOWED", v2968(v3113))
			v3093 = v570
			local scroll10 = Visual.scroll
			v2968 = _FH_NV
			local function v3114()
			end
			v3093(scroll10, "Next Base ESP", "Highlight next empty base", v2968(v3114))
		else
			v3093 = v570
			local scroll11 = Visual.scroll
			v2968 = _FH_NV
			local function v3115()
			end
			v3093(scroll11, "Timer ESP", "Show purchase timers", v2968(v3115))
			v3093 = v570
			local scroll12 = Visual.scroll
			v2968 = _FH_NV
			local function v3116()
			end
			v3093(scroll12, "FriendPanel ESP", "ALLOWED / UNALLOWED", v2968(v3116))
			v3093 = v570
			local scroll13 = Visual.scroll
			v2968 = _FH_NV
			local function v3117()
			end
			v3093(scroll13, "Base X-Ray", "See through plots (hides pets/NPCs)", v2968(v3117))
			v3093 = v571
			local scroll14 = Visual.scroll
			v2968 = 100
			local floor3 = math.floor
			v2969 = v560.get
			v2969 = v2969("basexray_alpha", 0.35)
			v2969 = v2969 * 100
			v2969 = v2969 + 0.5
			local v3118 = floor3(v2969)
			v2969 = _FH_NV

			local function v3119()
				v3080.setTransparency("basexray_alpha")
			end

			v2969 = v2969(v3119)
			v3093(scroll14, "Base X-Ray Transparency", 0, v2968, v3118, v2969, 1)
			v3093 = v3080.setTransparency
			v3093(v560.get("basexray_alpha", 0.35))
			v3093 = v570
			local scroll15 = Visual.scroll
			v2968 = _FH_NV
			local function v3120()
			end
			v3093(scroll15, "Next Base ESP", "Highlight next empty base", v2968(v3120))
		end
		v3093 = v570
		local scroll16 = Visual.scroll
		v2968 = _FH_NV
		local function v3121()
		end
		v3093(
			scroll16,
			"Podium ESP",
			"Outline all animal podium slots (incl. upper floors)",
			v2968(v3121)
		)
		v3093 = v570
		local scroll17 = Visual.scroll
		v2968 = _FH_NV
		local function v3122()
		end
		v3093(scroll17, "Player ESP", "Highlight + name tag", v2968(v3122))
		v3093 = v570
		local scroll18 = Visual.scroll
		v2968 = _FH_NV
		local function v3123()
		end
		v3093(scroll18, "Clone ESP", "Highlight clones after switch", v2968(v3123))
		v3093 = v570
		local scroll19 = Visual.scroll
		v2968 = _FH_NV
		local function v3124()
		end
		v3093(scroll19, "Mine ESP", "Box + owner name on Subspace Tripmines", v2968(v3124))
		v3093 = v570
		local scroll20 = Visual.scroll
		v2968 = _FH_NV
		local function v3125()
		end
		v3093(scroll20, "Friend ESP", "Highlight friends in green", v2968(v3125))
		v3093 = v590
		local scroll21 = Visual.scroll
		v2968 = v560.get
		v2969 = ""
		v2968 = v2968("friendesp_names", v2969)

		v2969 = function()
			v589.setNames("friendesp_names")
		end

		v3093(scroll21, "Friend Names", "name1, name2, ...", v2968, _FH_NV(v2969))
		v3093 = v564
		if v3093 then
			v3093 = v580
			v3093(Visual.scroll, "X-Ray")
			v3093 = v570
			local scroll22 = Visual.scroll
			v2968 = _FH_NV
			local function v3126()
			end
			v3093(scroll22, "Base X-Ray", "See through plots (hides pets/NPCs)", v2968(v3126))
		end
		v3093 = v580
		v3093(Visual.scroll, "Camera")
		v3093 = v571
		local scroll23 = Visual.scroll
		v2968 = 120
		v2969 = _FH_NV
		local function v3127()
		end
		v3093(scroll23, "FOV", 60, v2968, 70, v2969(v3127))
		v3093 = _FH_yield
		v3093()

		v3093 = function()
			local RunService3 = game:GetService("RunService")
			local v5203 = "UserGameSettings"
			local GetService30 = UserSettings():GetService(v5203)
			v5203 = nil
			local v5204, v5205, v5206, v5207
			local v5208 = {}
			local v5209 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.7, 0, 0, 0, 1)
			return "set"
		end

		v3093 = v3093()
		v2968 = "Stretches the view vertically (mobile + PC). High quality mode applied to reduce pixelation."
		local v3128 = v3093
		v2969 = function()
		end
		v570(Visual.scroll, "Game Stretcher", v2968, _FH_NV(v2969))
		v580(Visual.scroll, "Performance")
		_FH_yield()

		local function v3129()
			local v5218 = {}
			local Lighting = game:GetService("Lighting")
			local v5219 = "RunService"
			local GetService31 = game:GetService(v5219)
			local game39 = game
			v5219 = game39
			local v5220 = "Players"
			local v5221 = game39.GetService(v5219, v5220)
			v5219 = nil
			v5220 = nil
			local v5222 = {}
			local v5223 = {}
			local v5224, v5225
			local v5226 = {}
			local v5227 = {}

			local function v5228(...)
				local function v5269()
					settings()
				end

				pcall(_FH_NV(v5269))

				local function v5270()
					v5227.savedQualSetting = UserSettings():GetService("UserGameSettings").SavedQualityLevel
				end

				pcall(_FH_NV(v5270))
				if typeof(setfpscap) == "function" then
					if typeof(getfpscap) == "function" then
						local _, v5271
						v5271, _ = pcall(getfpscap)
						if v5271 and tonumber(nil) then
						end
					end
					pcall(setfpscap, 240)
				end
			end

			local function v5229()
				local function v5272()
					settings()
				end

				pcall(_FH_NV(v5272))

				local function v5273()
					UserSettings():GetService("UserGameSettings")
					if v5227.savedQualSetting then
					end
				end

				pcall(_FH_NV(v5273))
				if typeof(setfpscap) == "function" and v5220 then
					pcall(setfpscap, v5220)
				end
			end

			local function v5230()
				local function v5274()
					Lighting.GlobalShadows = false
				end

				pcall(_FH_NV(v5274))

				local function v5275()
					Lighting.EnvironmentDiffuseScale = 0
				end

				pcall(_FH_NV(v5275))

				local function v5276()
					Lighting.EnvironmentSpecularScale = 0
				end

				pcall(_FH_NV(v5276))

				local function v5277()
					Lighting.FogEnd = 9000000000
				end

				pcall(_FH_NV(v5277))

				local function v5278()
					Lighting.FogStart = 9000000000
				end

				pcall(_FH_NV(v5278))

				local function v5279()
					v5227.technology = Lighting.Technology
				end

				pcall(_FH_NV(v5279))
				for _, v5280 in ipairs(v60.lighting()) do
					if v5280:IsA("Atmosphere") or v5280:IsA("Clouds") or v5280:IsA("Sky") then
						local v5281 = v5280
						local function v5282()
						end
						pcall(_FH_NV(v5282))
						v5223[#v5223 + 1] = {}
					elseif v5280:IsA("BloomEffect") or v5280:IsA("BlurEffect") or
						(v5280:IsA("DepthOfFieldEffect") or v5280:IsA("SunRaysEffect")) or
						v5280:IsA("ColorCorrectionEffect") then
						local v5283 = v5280

						local function v5284()
							return v5283.Enabled
						end

						local v5285, v5286
						v5286, v5285 = pcall(_FH_NV(v5284))
						if v5286 and v5285 ~= false then
							local v5287 = v5280

							local function v5288()
								v5287.Enabled = false
							end

							pcall(_FH_NV(v5288))
							v5222[#v5222 + 1] = v5280
						end
					end
				end
			end

			local function v5231()
				if v5219 then
					local function v5289()
						Lighting.GlobalShadows = v5219.GlobalShadows
					end

					pcall(_FH_NV(v5289))

					local function v5290()
						Lighting.EnvironmentDiffuseScale = v5219.EnvironmentDiffuseScale
					end

					pcall(_FH_NV(v5290))

					local function v5291()
						Lighting.EnvironmentSpecularScale = v5219.EnvironmentSpecularScale
					end

					pcall(_FH_NV(v5291))

					local function v5292()
						Lighting.FogEnd = v5219.FogEnd
					end

					pcall(_FH_NV(v5292))

					local function v5293()
						Lighting.FogStart = v5219.FogStart
					end

					pcall(_FH_NV(v5293))
				end

				local function v5294()
					if v5227.technology then
						v5227.technology = nil
					end
				end

				pcall(_FH_NV(v5294))
				for _, v5295 in ipairs(v5222) do
					if v5295.Parent then
						local v5296 = v5295

						local function v5297()
							v5296.Enabled = true
						end

						pcall(_FH_NV(v5297))
					end
				end
				for _, v5298 in ipairs(v5223) do
					if v5298.inst and v5298.parent then
						local v5299 = v5298
						local function v5300()
						end
						pcall(_FH_NV(v5300))
					end
				end
			end

			local function v5232(...)
				local v5301 = nil
				local Terrain = workspace:FindFirstChildOfClass("Terrain")
				if not Terrain then
					return
				end

				local function v5302()
					return Terrain.Decoration
				end

				pcall(_FH_NV(v5302))
				if not v5301 then
					v5301 = nil
				end
				local v5303
				v5303.WaterWaveSize = Terrain.WaterWaveSize
				v5303.WaterWaveSpeed = Terrain.WaterWaveSpeed
				v5303.WaterReflectance = Terrain.WaterReflectance
				v5303.WaterTransparency = Terrain.WaterTransparency

				local function v5304()
					Terrain.Decoration = false
				end

				pcall(_FH_NV(v5304))

				local function v5305()
					Terrain.WaterWaveSize = 0
				end

				pcall(_FH_NV(v5305))

				local function v5306()
					Terrain.WaterWaveSpeed = 0
				end

				pcall(_FH_NV(v5306))

				local function v5307()
					Terrain.WaterReflectance = 0
				end

				pcall(_FH_NV(v5307))

				local function v5308()
					Terrain.WaterTransparency = 1
				end

				pcall(_FH_NV(v5308))
			end

			local function v5233()
				if not v5224 then
					return
				end
				local terrain = v5224.terrain

				local function v5309()
					terrain.Decoration = v5224.Decoration
				end

				pcall(_FH_NV(v5309))

				local function v5310()
					terrain.WaterWaveSize = v5224.WaterWaveSize
				end

				pcall(_FH_NV(v5310))

				local function v5311()
					terrain.WaterWaveSpeed = v5224.WaterWaveSpeed
				end

				pcall(_FH_NV(v5311))

				local function v5312()
					terrain.WaterReflectance = v5224.WaterReflectance
				end

				pcall(_FH_NV(v5312))

				local function v5313()
					terrain.WaterTransparency = v5224.WaterTransparency
				end

				pcall(_FH_NV(v5313))
			end

			local function v5234()
				local function v5314()
					settings()
				end

				pcall(_FH_NV(v5314))
			end

			local function v5235()
				if not v5225 then
					return
				end

				local function v5315()
					settings()
				end

				pcall(_FH_NV(v5315))
			end

			local v5236 = { "ParticleEmitter", "Fire", "Smoke" }
			local v5237 = "Sparkles"
			v5236[4] = v5237
			local v5238 = { ParticleEmitter = true, Fire = true, Smoke = true, Sparkles = true }
			local SmoothPlastic = Enum.Material.SmoothPlastic
			local v5239 = {}
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Glass
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Neon
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.ForceField
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Marble
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Granite
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Wood
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.WoodPlanks
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Brick
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Cobblestone
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Concrete
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.CorrodedMetal
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.DiamondPlate
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Foil
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Grass
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Ice
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Pebble
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Sand
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Slate
			v5239[v5237] = true
			v5237 = Enum
			v5237 = v5237.Material
			v5237 = v5237.Fabric
			v5239[v5237] = true
			v5237 = {}
			local v5240 = {}
			local v5241 = {}
			local v5242 = {}
			local v5243 = {}
			local v5244 = {}
			local v5245 = nil
			local v5246 = _FH_NV

			local function v5247(...)
				local v5316, v5317
				local LocalPlayer49 = v5221.LocalPlayer
				if v5316 then
					v5316 = LocalPlayer49.Character
				end
				v60.invalidate()
				local v5318 = v60.workspace()
				for v5319 = 1, #v5318 do
					local v5320 = v5318[v5319]
					local ClassName = v5320.ClassName
					if v5238[ClassName] then
						v5237[#v5237 + 1] = v5320
					elseif ClassName == "Beam" or ClassName == "Trail" then
						v5240[#v5240 + 1] = v5320
					elseif ClassName == "PointLight" or ClassName == "SpotLight" or
						ClassName == "SurfaceLight" then
						if not (v5316 and v5320:IsDescendantOf(v5317)) then
							v5241[#v5241 + 1] = v5320
						end
					elseif ClassName == "Decal" or ClassName == "Texture" then
						v5242[#v5242 + 1] = v5320
					else
						v5317 = "BasePart"
						if v5320:IsA(v5317) and not (v5316 and v5320:IsDescendantOf(v5317)) then
							v5243[#v5243 + 1] = v5320
						end
					end
				end
				local v5321 = v60.lighting(0)
				for v5322 = 1, #v5321 do
					local v5323 = v5321[v5322]
					if v5238[v5323.ClassName] then
						v5237[#v5237 + 1] = v5323
					end
				end
			end

			v5246 = v5246(v5247)
			v5245 = v5246
			v5246 = nil
			v5247 = nil
			local v5248, v5249, v5250
			v5246 = {}
			v5247 = {}
			v5248 = {}
			v5249 = {}
			v5250 = {}

			local function v5251()
				if #v5237 == 0 then
					v5245()
				end
				local v5324 = v5237
				for v5325 = 1, #v5324 do
					local v5326 = v5237[v5325]
					local v5327 = v5326

					local function v5328()
						return v5327.Enabled
					end

					local v5329, v5330
					v5330, v5329 = pcall(_FH_NV(v5328))
					if v5330 and v5329 ~= false then
						local v5331 = v5326

						local function v5332()
							v5331.Enabled = false
						end

						pcall(_FH_NV(v5332))
						v5246[#v5246 + 1] = v5326
					end
				end
			end

			local function v5252()
				for _, v5333 in ipairs(v5246) do
					if v5333.Parent then
						local v5334 = v5333

						local function v5335()
							v5334.Enabled = true
						end

						pcall(_FH_NV(v5335))
					end
				end
			end

			local function v5253()
				local v5336 = v5240
				for v5337 = 1, #v5336 do
					local v5338 = v5240[v5337]
					local v5339 = v5338

					local function v5340()
						return v5339.Enabled
					end

					local v5341, v5342
					v5342, v5341 = pcall(_FH_NV(v5340))
					if v5342 and v5341 ~= false then
						local v5343 = v5338

						local function v5344()
							v5343.Enabled = false
						end

						pcall(_FH_NV(v5344))
						v5247[#v5247 + 1] = v5338
					end
				end
			end

			local function v5254()
				for _, v5345 in ipairs(v5247) do
					if v5345.Parent then
						local v5346 = v5345

						local function v5347()
							v5346.Enabled = true
						end

						pcall(_FH_NV(v5347))
					end
				end
			end

			local function v5255()
				local v5348 = v5241
				for v5349 = 1, #v5348 do
					local v5350 = v5241[v5349]
					local v5351 = v5350

					local function v5352()
						return v5351.Enabled
					end

					local v5353, v5354
					v5354, v5353 = pcall(_FH_NV(v5352))
					if v5354 and v5353 ~= false then
						local v5355 = v5350

						local function v5356()
							v5355.Enabled = false
						end

						pcall(_FH_NV(v5356))
						v5248[#v5248 + 1] = v5350
					end
				end
			end

			local function v5256()
				for _, v5357 in ipairs(v5248) do
					if v5357.Parent then
						local v5358 = v5357

						local function v5359()
							v5358.Enabled = true
						end

						pcall(_FH_NV(v5359))
					end
				end
			end

			local function v5257()
				local v5360 = v5242
				for v5361 = 1, #v5360 do
					local v5362 = v5242[v5361]
					local v5363 = v5362

					local function v5364()
						return v5363.Transparency
					end

					local v5365, v5366
					v5366, v5365 = pcall(_FH_NV(v5364))
					if v5366 and v5365 < 1 then
						local v5367 = { inst = v5362, transparency = v5365 }
						v5249[#v5249 + 1] = v5367
						local v5368 = v5362

						local function v5369()
							v5368.Transparency = 1
						end

						pcall(_FH_NV(v5369))
					end
				end
			end

			local function v5258()
				for _, v5370 in ipairs(v5249) do
					if v5370.inst.Parent then
						local v5371 = v5370
						local function v5372()
						end
						pcall(_FH_NV(v5372))
					end
				end
			end

			local function v5259()
				v5245()
				local v5373 = v5243
				for v5374 = 1, #v5373 do
					local v5375 = v5243[v5374]
					local v5376 = v5375

					local function v5377()
						return v5376.CastShadow
					end

					local v5378, v5379
					v5379, v5378 = pcall(_FH_NV(v5377))
					if v5379 and v5378 == true then
						local v5380 = v5375

						local function v5381()
							v5380.CastShadow = false
						end

						pcall(_FH_NV(v5381))
						v5250[#v5250 + 1] = v5375
					end
				end
			end

			local function v5260()
				for _, v5382 in ipairs(v5250) do
					if v5382.Parent then
						local v5383 = v5382

						local function v5384()
							v5383.CastShadow = true
						end

						pcall(_FH_NV(v5384))
					end
				end
			end

			local function v5261()
				local v5385 = v5243
				for v5386 = 1, #v5385 do
					local v5387 = v5243[v5386]
					local v5388 = v5387

					local function v5389()
						return v5388.Material
					end

					local v5390, v5391
					v5391, v5390 = pcall(_FH_NV(v5389))
					if v5391 and v5239[v5390] then
						local v5392 = v5387
						local function v5393()
						end
						pcall(_FH_NV(v5393))
						local v5394 = { part = v5387, material = v5390 }
						v5244[#v5244 + 1] = v5394
					end
				end
			end

			local function v5262()
				for _, v5395 in ipairs(v5244) do
					if v5395.part.Parent then
						local v5396 = v5395
						local function v5397()
						end
						pcall(_FH_NV(v5397))
					end
				end
			end

			local function v5263(...)
				v5226[#v5226 + 1] = workspace.DescendantAdded:Connect(nil)

				local function v5398(...)
					if not v5218.enabled then
						return
					end
					if (nil).IsA(nil, "BloomEffect") or (nil).IsA(nil, "BlurEffect") or
						((nil).IsA(nil, "DepthOfFieldEffect") or (nil).IsA(nil, "SunRaysEffect")) or
						((nil).IsA(nil, "Atmosphere") or (nil).IsA(nil, "Clouds")) then
						local v5405 = nil

						local function v5406()
							v5405.Enabled = false
						end

						pcall(_FH_NV(v5406))
					end
				end

				v5226[#v5226 + 1] = Lighting.DescendantAdded:Connect(v5398)
			end

			local function v5264()
				for _, v5407 in ipairs(v5226) do
					local v5408 = v5407

					local function v5409()
						v5408:Disconnect()
					end

					pcall(_FH_NV(v5409))
				end
			end

			local v5265 = nil

			local function v5266()
				if v5265 then
					local function v5410()
						v5265:Destroy()
					end

					pcall(_FH_NV(v5410))
				end
				Instance.new("Frame")
				Vector2.new(0.5, 0.5)
				UDim2.new(0.5, 0, 0.5, 0)
				UDim2.new(0, 230, 0, 88)
				v87(0)
				v561(0, 14)
				local v5411 = v69
				v5411(0, 2, 0, 90)
				v5411(
					0,
					2,
					14,
					v558.Text,
					Enum.Font.GothamBold,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, -20, 0, 20)
				UDim2.new(0, 10, 0, 16)
				local Frame60 = Instance.new("Frame")
				UDim2.new(1, -40, 0, 6)
				UDim2.new(0, 20, 0, 52)
				v561(Frame60, 3)
				Instance.new("Frame")
				UDim2.new(0, 0, 1, 0)
				local v5412 = v561
				v5412(0, 3)
				v5412(
					0,
					"Please wait…",
					10,
					v558.TextDim,
					Enum.Font.Gotham,
					Enum.TextXAlignment.Center
				)
				UDim2.new(1, -20, 0, 14)
				UDim2.new(0, 10, 0, 64)
				local v5413 = v68
				local v5414 = TweenInfo.new(0.18)
				v5413(0, v5414, {})
				return v5413, 0, v5414
			end

			local function v5267()
			end
			local v5268 = false
			return "set"
		end

		local v3130 = v3129()
		local scroll24 = Visual.scroll
		v2968 = "Optimization and FPS Boost"
		v2969 = _FH_NV
		local function v3131()
		end
		local v3132 = v570(
			scroll24,
			v2968,
			"⚡ NUCLEAR FPS boost: kills shadows, particles, beams, extra lights, decals, textures, expensive materials + guards against new effects spawning. Fully reversible.",
			v2969(v3131)
		)
		v2968 = "toggle:Optimization and FPS Boost"
		local v3133 = v3132
		if v560.get(v2968, nil) == nil then
			local defer = task.defer
			v2968 = _FH_NV

			local function v3134()
				local function v5455()
					v3132.set(true)
				end

				pcall(v5455)
			end

			defer(v2968(v3134))
			v3133 = v3132
		end
		v3133 = Visual.scroll
		v580(v3133, "Misc")
		v3133 = Visual.scroll
		v2968 = ""
		v2969 = function()
		end
		v570(v3133, "Anti Bee", v2968, _FH_NV(v2969))
		_FH_yield()

		local function v3135()
			local v5456 = {}
			local v5457 = 255
			local v5458 = 0
			local v5459 = 0
			local v5460 = Color3.fromRGB(v5457, v5458, v5459)
			v5457 = {}
			v5458 = {}
			v5459 = {}
			local v5461 = {}
			local v5462 = {}

			local function v5463()
				for _, v5467 in ipairs(v5462) do
					local v5468 = v5467

					local function v5469()
						v5468:Disconnect()
					end

					pcall(_FH_NV(v5469))
				end
			end

			local v5464 = setmetatable({}, {})

			local function v5465(...)
				if not v5456.enabled then
					return
				end
				if (nil).IsA(nil, "TextLabel") then
					if v5457[nil] == nil then
						v5457[nil] = (nil).Text
						v5458[nil] = (nil).TextColor3
					end
					local v5470 = nil

					local function v5471()
						v5470.Text = "Trading Plaza Isnt Available In Your Current Region, Please try again later"
					end

					pcall(_FH_NV(v5471))
					local v5472 = nil

					local function v5473()
						local enabled5 = v5456.enabled
						if enabled5 and not v5464[enabled5] and
							v5472.Text ~= "Trading Plaza Isnt Available In Your Current Region, Please try again later" then
							local function v5482()
								v5472.Text = "Trading Plaza Isnt Available In Your Current Region, Please try again later"
							end

							pcall(_FH_NV(v5482))
						end
					end

					v5462[#v5462 + 1] = (nil).GetPropertyChangedSignal(nil, "Text"):Connect(v5473)
				elseif (nil).IsA(nil, "UIGradient") then
					if v5459[nil] == nil then
						v5459[nil] = (nil).Enabled
					end
					local v5474 = nil

					local function v5475()
						v5474.Enabled = false
					end

					pcall(_FH_NV(v5475))
					local v5476 = nil

					local function v5477()
						if v5456.enabled and v5476.Enabled then
						end
					end

					v5462[#v5462 + 1] = (nil).GetPropertyChangedSignal(nil, "Enabled"):Connect(_FH_NV(v5477))
				elseif (nil).IsA(nil, "ProximityPrompt") then
					if v5461[nil] == nil then
						v5461[nil] = (nil).Enabled
					end
					local v5478 = nil

					local function v5479()
						v5478.Enabled = false
					end

					pcall(_FH_NV(v5479))
					local v5480 = nil

					local function v5481()
						if v5456.enabled and v5480.Enabled then
						end
					end

					v5462[#v5462 + 1] = (nil).GetPropertyChangedSignal(nil, "Enabled"):Connect(_FH_NV(v5481))
				end
			end

			local function v5466(...)
				for _, v5483 in ipairs(v48(nil)) do
					(nil)(v5483)
				end

				local function v5484()
					if v5456.enabled then
					end
				end

				v5462[#v5462 + 1] = (nil).DescendantAdded:Connect(_FH_NV(v5484))
			end

			return "set"
		end

		local v3136 = v3135()
		v3133 = v580
		v2968 = "Anti"
		v3133(v3083.scroll, v2968)
		v3133 = v570
		v2968 = "Anti Admin Panel"

		v2969 = function(...)
			v521.set(nil)
			local v5506 = nil
			local function v5507()
			end
			pcall(_FH_NV(v5507))
			local v5508 = nil
			local function v5509()
			end
			pcall(_FH_NV(v5509))
		end

		v3133(
			v3083.scroll,
			v2968,
			"Blocks admin-panel knockup, jumpscare, and inverse attacks.",
			v2969
		)
		v3133 = v570
		local scroll25 = v3083.scroll
		v2968 = "Anti Gummy Bear"
		v2969 = _FH_NV
		local function v3137()
		end
		v3133(scroll25, v2968, "Clear gummy-bear tool block / web attributes.", v2969(v3137))
		v3133 = v580
		v2968 = "Auto Reset"
		v3133(v3083.scroll, v2968)
		v3133 = v570
		local scroll26 = v3083.scroll
		v2968 = "Auto Reset on Balloon"
		v2969 = _FH_NV
		local function v3138()
		end
		v3133(
			scroll26,
			v2968,
			"Instantly resets you when the balloon effect is applied.",
			v2969(v3138)
		)
		v3133 = v570
		local scroll27 = v3083.scroll
		v2968 = "Auto Reset on Jail"
		v2969 = _FH_NV
		local function v3139()
		end
		v3133(
			scroll27,
			v2968,
			"Instantly resets you when the jail effect is applied.",
			v2969(v3139)
		)
		v3133 = v580
		v2968 = "Movement"
		v3133(v3083.scroll, v2968)
		v3133 = v570
		local scroll28 = v3083.scroll
		v2968 = "Carpet Speed"
		v2969 = _FH_NV
		local function v3140()
		end
		v3133(scroll28, v2968, "Fly fast on the Flying Carpet.", v2969(v3140))
		v3133 = nil
		v2968 = v3083.scroll
		v2969 = 100

		local function v3141()
			local v5510 = v3133
			if v5510 then
				v3133.Visible = v5510
			end
		end

		v571(v2968, "Carpet Speed Value", v2969, 210, 175, _FH_NV(v3141), 1)
		local v3142 = v562
		v2968 = v3083.scroll
		v2969 = 9
		local v3143 = Color3.fromRGB(255, 210, 40)
		local GothamBold = Enum.Font.GothamBold
		local Center = Enum.TextXAlignment.Center
		v3133 = v3142(
			v2968,
			"Going over speed 185 can cause lag backs.",
			v2969,
			v3143,
			GothamBold,
			Center
		)
		v2968 = 1
		v2969 = 0
		v3133.Size = UDim2.new(v2968, -8, v2969, 22)
		v3133.TextWrapped = true
		local tonumber4 = tonumber
		v2968 = v560.get
		v2969 = 175
		local v3144 = tonumber4(v2968("slider:Carpet Speed Value", v2969))
		if not v3144 then
			v3144 = 175
		end
		local v3145, v3146, v3147, v3148, v3149, v3150, v3151, v3152
		local v3153, v3154, v3155, v3156, v3157
		if 185 < v3144 then
			v3157 = true
			v3156 = v2902
			v3155 = 22
			v3154 = Center
			v3153 = 40
			v3152 = nil
			v3151 = nil
			v3150 = nil
			v3149 = nil
			v3148 = nil
			v3147 = nil
			v3146 = nil
			v3145 = nil
		else
			v3157 = false
			v3156 = v2902
			v3155 = 22
			v3154 = Center
			v3153 = 40
			v3152 = nil
			v3151 = nil
			v3150 = nil
			v3149 = nil
			v3148 = nil
			v3147 = nil
			v3146 = nil
			v3145 = nil
		end
		v3133.Visible = v3157
		v2968 = v3083.scroll
		v2969 = "Jump anytime, mid-air. Hold space/A to repeat."
		v3155 = _FH_NV
		local function v3158()
		end
		v570(v2968, "Infinite Jump", v2969, v3155(v3158))
		v2968 = v3083.scroll
		v2969 = "Forces tools back into backpack after reset; only switches when you do."
		v3155 = _FH_NV
		local function v3159()
		end
		v570(v2968, "Backpack Lock", v2969, v3155(v3159))
		v2968 = v3083.scroll
		v580(v2968, "Giant Potion")
		v2968 = v3083.scroll
		v2969 = "Keep giant potion active"
		v3155 = _FH_NV
		local function v3160()
		end
		v570(v2968, "Auto Big Potion", v2969, v3155(v3160))
		v2968 = v3083.scroll
		v2969 = "Speed boost while giant potion is active."
		v3155 = _FH_NV
		local function v3161()
		end
		v570(v2968, "Giant Potion Speed", v2969, v3155(v3161))
		local v3162 = v571
		v2968 = v3083.scroll
		v2969 = 10
		v3155 = 200
		v3154 = _FH_NV
		v3153 = function()
		end
		v3154 = v3154(v3153)
		v3153 = 0.1
		v3162(v2968, "Giant Potion Speed Value", v2969, v3155, 34, v3154, v3153)
		v2968 = v3083.scroll
		v580(v2968, "Combat")
		v2968 = v3083.scroll
		v2969 = "Web Slinger / Laser Cape aimbot."
		v3155 = _FH_NV
		local function v3163()
		end
		v570(v2968, "Aimbot", v2969, v3155(v3163))
		v2968 = v3083.scroll
		v2969 = "Deletes turrets that other players place."
		v3155 = _FH_NV
		local function v3164()
		end
		v570(v2968, "Auto Destroy Turrets", v2969, v3155(v3164))
		v2968 = v3083.scroll
		v580(v2968, "Other")
		v2968 = v3083.scroll
		v2969 = "Keeps you alive: refills health and blocks the death state."
		v3155 = _FH_NV
		local function v3165()
		end
		v570(v2968, "Anti Die", v2969, v3155(v3165))
		v2968 = v3083.scroll
		v2969 = "Hides the admin topbar panel and locks the trade machine."
		v3155 = _FH_NV
		local function v3166()
		end
		v570(v2968, "Hide Admin Panel", v2969, v3155(v3166))
		v2968 = v3083.scroll
		v2969 = "Warn when players enter your steal hitbox."
		v3155 = _FH_NV
		local function v3167()
		end
		v570(v2968, "Base Alarm", v2969, v3155(v3167))
		v2968 = v3083.scroll
		v580(v2968, "Hide GUI")
		v2968 = v3083.scroll
		v2969 = "Auto-hide the hub while the selected tool is equipped."
		v3155 = _FH_NV
		local function v3168()
		end
		v570(v2968, "Hide GUI on Equip", v2969, v3155(v3168))
		v2968 = v3083.scroll
		v2969 = "tool name"
		v3155 = ""
		v3154 = function()
		end
		v590(v2968, "Hide GUI Item", v2969, v3155, _FH_NV(v3154))
		_FH_yield()

		local function v3169()
			local v5511 = {}
			local v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Gotham
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.GothamBold
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.GothamMedium
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.GothamBlack
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.SourceSans
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Arial
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Code
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Cartoon
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Highway
			v5512 = Enum
			v5512 = v5512.Font
			v5512 = v5512.Fantasy
			v5512 = { "Default" }
			local v5513 = "Gotham"
			local v5514 = "Gotham Black"
			local v5515 = "Source Sans"
			local v5516 = "Code"
			local v5517 = "Highway"
			v5512[2] = v5513
			v5512[3] = "Gotham Bold"
			v5512[4] = "Gotham Medium"
			v5512[5] = v5514
			v5512[6] = v5515
			v5512[7] = "Arial"
			v5512[8] = v5516
			v5512[9] = "Cartoon"
			v5512[10] = v5517
			v5512[11] = "Fantasy"
			v5512 = nil

			v5513 = function(...)
				local v5529 = (nil)(nil, "TextLabel")
				if not v5529 then
					v5529 = v5529(nil, "TextButton")
				end
				if not v5529 then
					v5529 = v5529(nil, "TextBox")
				end
				if not v5529 then
					return false
				end
				local v5530 = v5529(nil, v559)
				if v5530 then
					return false
				end
				local BillboardGui2 = v5530(nil, "BillboardGui")
				if BillboardGui2 or BillboardGui2(nil, "SurfaceGui") then
					return true
				end
				return false
			end

			v5512 = _FH_NV(v5513)

			local function v5518(...)
				if (nil).GetAttribute(nil, "_origFont") == nil then
					local v5531 = nil

					local function v5532()
						v5531:SetAttribute("_origFont", v5531.Font.Name)
					end

					pcall(_FH_NV(v5532))
				end
				if (nil).GetAttribute(nil, "_origSize") == nil then
					local v5533 = nil

					local function v5534()
						v5533:SetAttribute("_origSize", v5533.TextSize)
					end

					pcall(_FH_NV(v5534))
				end
			end

			v5513 = nil

			local function v5519(...)
				local v5535 = nil
				v5518(v5535)
				local font = v5511.font
				if not font then
					local _origFont = font(v5535, "_origFont")
					if _origFont then
						v5535 = Enum.Font[_origFont]
						if v5535 then
							v5535 = Enum.Font[_origFont]
						end
					end
				end
				local _leave79 = false
				local size = v5511.size
				if size then
					size = v5511.size
					if 0 < size then
						_leave79 = true
					end
				end
				if not _leave79 and size(v5535, "_origSize") then
				end
			end

			_FH_NV(v5519)
			local setmetatable7 = setmetatable
			v5514 = {}
			v5515 = { __mode = "k" }
			local v5520 = setmetatable7(v5514, v5515)
			v5514 = nil
			v5515 = _FH_NV

			local function v5521()
				if v5512 then
					return true
				end
				return false
			end

			v5515 = v5515(v5521)
			v5514 = v5515
			v5515 = nil

			v5516 = function(...)
				local v5536 = { nil }
				local v5537 = 1
				local v5538 = 0
				while 0 < v5537 do
					local GetChildren7 = v5536[v5537]:GetChildren()
					local v5539 = 0
					v5537 = v5537 - 1
					while true do
						v5539 = v5539 + 1
						if v5539 <= #GetChildren7 then
							v5537 = v5537 + 1
						else
							break
						end
					end
					v5538 = v5538 + 1
					if v5538 % 40 == 0 then
						task.wait()
					end
				end
			end

			_FH_NV(v5516)
			local v5522 = {}

			local function v5523(...)
				if not nil then
					return
				end
				v5522[nil] = true
				local v5540 = nil
				local function v5541()
				end
				task.spawn(_FH_NV(v5541))

				local function v5542(...)
					if v5514(nil) then
						local v5543 = nil
						local function v5544()
						end
						task.defer(_FH_NV(v5544))
					end
				end

				;(nil).DescendantAdded:Connect(v5542)
			end

			v5516 = false

			local function v5524()
				if v5516 then
					return
				end

				local function v5545()
					v5523(game:GetService("CoreGui"))
				end

				pcall(_FH_NV(v5545))

				local function v5546(...)
					local v5549, v5550, v5551
					local LocalPlayer51 = GetService2.LocalPlayer
					if v5549 then
						v5551 = "PlayerGui"
						v5549 = LocalPlayer51:FindFirstChildOfClass(v5551)
						v5550 = LocalPlayer51
					end
					if v5549 then
						v5550(v5551)
					end
					if LocalPlayer51 then
						local function v5552(...)
							if (nil)(nil, "PlayerGui") then
								v5523(nil)
							end
						end

						LocalPlayer51.ChildAdded:Connect(_FH_NV(v5552))
					end
				end

				pcall(v5546)

				local function v5547()
					v5523(game:GetService("Workspace"))
				end

				pcall(_FH_NV(v5547))

				local function v5548()
					v5523(game:GetService("StarterGui"))
				end

				pcall(_FH_NV(v5548))
			end

			v5517 = nil

			local function v5525(...)
				local v5553
				for v5554, _ in pairs(v5520) do
					if v5554 and v5554.Parent and v5512(v5553) then
						v5553 = v5513
					end
				end
			end

			v5517 = _FH_NV(v5525)
			local v5526 = {}

			local function v5527()
				local font2 = v5511.font
				if font2 then
					font2()
				end
				v5517()
			end

			_FH_NV(v5527)

			local function v5528(...)
				local v5555 = tonumber(nil)
				if v5555 and not (v5555 <= 0) then
					v5511.size = v5555
				end
				local size2 = v5511.size
				if size2 then
					size2()
				end
				v5517()
			end

			return (_FH_NV(v5528))
		end

		local v3170 = v3169()
		v2968 = v580
		v2969 = "Interface"
		v2968(v2932.scroll, v2969)
		v2968 = v571
		local scroll29 = v2932.scroll
		v2969 = "UI Size"
		v3155 = 50
		v3154 = 100
		v3153 = _FH_NV

		v3152 = function()
			v91()
		end

		v3153 = v3153(v3152)
		v3152 = 1
		v3151 = _FH_NV

		v3150 = function()
			v91()
		end

		v2968(scroll29, v2969, v3155, 200, v3154, v3153, v3152, v3151(v3150))
		v2968 = v580
		v2969 = "Custom Fonts"
		v2968(v2932.scroll, v2969)
		v2968 = v582
		local scroll30 = v2932.scroll
		v2969 = "Font"
		v3155 = v3170.FONT_NAMES
		v3154 = function()
		end
		local v3171 = v3154
		v3154 = "Default"
		v2968(scroll30, v2969, v3155, _FH_NV(v3171), v3154)
		v2968 = v590
		local scroll31 = v2932.scroll
		v2969 = "Font Size"
		v3155 = "auto"
		v3154 = _FH_NV
		v3153 = function()
		end
		v2968(scroll31, v2969, v3155, "", v3154(v3153))
		v2968 = v572
		v2969 = "Set To Default"
		v3155 = "Revert text size to original."

		local function v3172()
			local function v5556()
				v560.set("input:Font Size", "")
			end

			pcall(_FH_NV(v5556))
			v3170.setSize(nil)
		end

		v2968(v2932.scroll, v2969, v3155, v3172)
		v2968 = v580
		v2969 = "Movement"
		v2968(v2932.scroll, v2969)
		v2968 = v582
		v2969 = "Mount Type"
		v3155 = v595
		v3154 = function()
		end
		local v3173 = v3154
		v3154 = v516
		v2968(v2932.scroll, v2969, v3155, _FH_NV(v3173), v3154)
		v2968 = false
		v2969 = v2932.scroll
		v3155 = "Flash + Cloak Combo"

		v3154 = function()
			local function v5557(...)
				local v5558 = nil
				if v2968 then
					return
				end
				local game40 = game
				v5558 = game40
				local LocalPlayer52 = game40.GetService(v5558, "Players").LocalPlayer
				v5558 = nil

				local function v5559(...)
					local v5565, v5566
					local Character37 = LocalPlayer52.Character
					local Backpack8 = "Backpack"
					local FindFirstChild35 = LocalPlayer52:FindFirstChild(Backpack8)
					for _, _ in ipairs(Backpack8) do
						if v5565 then
							v5565 = Character37:FindFirstChild(v5566)
						end
						if not (v5565 or not v5565) then
							v5565 = FindFirstChild35:FindFirstChild(v5566)
						end
						if v5565 then
							local Tool2 = v5565:IsA("Tool")
							if Tool2 then
								return Tool2
							end
							v5566 = v5565
						end
					end
					return nil
				end

				_FH_NV(v5559)

				local function v5560(...)
					local v5567 = nil
					if not nil then
						return false
					end
					local Character38 = LocalPlayer52.Character
					if v5567 then
						v5567 = Character38:FindFirstChildOfClass("Humanoid")
					end
					if not v5567 then
						return false
					end
					local v5568 = nil
					local v5569 = v5567

					local function v5570(...)
						local Parent16 = v5568.Parent
						if Parent16 ~= nil then
							Parent16:EquipTool(v5568)
						end
					end

					pcall(_FH_NV(v5570))
					local v5571 = nil

					local function v5572()
						v5571:Activate()
					end

					pcall(_FH_NV(v5572))
					return true
				end

				local function v5561()
					task.wait()
					task.wait()
					task.wait()
					local v5573 = v5560
					local v5574 = v5558
					local v5575 = { "Invisibility Cloak", "Invis Cloak", "Invisibility", "Cloak" }
					v5573(v5574(v5575))
				end

				local v5562 = _FH_NV(v5561)
				if v5562 then
					v5562 = v532.suspend
				end
				if v5562 then
					v5562 = pcall
					v5561 = _FH_NV

					local function v5563()
						v532.suspend(2)
					end

					v5562(v5561(v5563))
				end
				local v5564 = { "Flash Teleport", "Flash", "Teleport" }
				v5562(v5561(v5564))
				task.wait(0.15)
				;(nil)()
				while v2968 do
					task.wait(0.5)
					if not v2968 then
						break
					end
					local Character36 = LocalPlayer52.Character
					if not (Character36 and Character36:FindFirstChild(v516)) then
						break
					end
					;(nil)()
				end
			end

			task.spawn(v5557)
		end

		v572(v2969, v3155, "", v3154)
		v2969 = v2932.scroll
		v3155 = "Speed Bypass"

		v3154 = function()
			local function v5576(...)
				local LocalPlayer53 = game:GetService("Players").LocalPlayer

				local function v5577(...)
					local v5579, v5580
					local Character39 = LocalPlayer53.Character
					local Backpack9 = "Backpack"
					local FindFirstChild36 = LocalPlayer53:FindFirstChild(Backpack9)
					for _, _ in ipairs(Backpack9) do
						if v5579 then
							v5579 = Character39:FindFirstChild(v5580)
						end
						if not (v5579 or not v5579) then
							v5579 = FindFirstChild36:FindFirstChild(v5580)
						end
						if v5579 then
							local Tool3 = v5579:IsA("Tool")
							if Tool3 then
								return Tool3
							end
							v5580 = v5579
						end
					end
					return nil
				end

				_FH_NV(v5577)
				local v5578 = { "Giant Potion", "Giant", "Grow Potion", "Super Grow", "Potion" }
				v5577((nil)(v5578))
				task.wait(0.1)
				if v567 and v567.reset then
					pcall(v567.reset)
				end
			end

			task.spawn(v5576)
		end

		v572(v2969, v3155, "", v3154)
		v2969 = Main.scroll
		v3155 = "Panels"
		v580(v2969, v3155)
		v2969 = Main.scroll
		v3155 = "Booster Panel"
		v3154 = _FH_NV
		v3153 = function()
		end
		v570(v2969, v3155, "Show booster window", v3154(v3153))
		v2969 = Main.scroll
		v3155 = "Actions Panel"
		v3154 = _FH_NV
		v3153 = function()
		end
		v570(v2969, v3155, "Show actions window", v3154(v3153))
		v2969 = Main.scroll
		v3155 = "Defense Panel"
		v3154 = _FH_NV
		v3153 = function()
		end
		v570(v2969, v3155, "Show defense window", v3154(v3153))
		v2969 = Main.scroll
		v3155 = "Unlock Base Panel"
		v3154 = _FH_NV
		v3153 = function()
		end
		v570(v2969, v3155, "Unlock enemy base floors (1/2/3)", v3154(v3153))
		_FH_yield()
		v2969 = Main.scroll
		v3155 = "Command Cooldowns Panel"
		v3154 = _FH_NV
		v3153 = function()
		end
		local v3174 = v570(v2969, v3155, "Live admin command cooldowns", v3154(v3153))
		v2969 = v570
		v3155 = Main.scroll
		v3154 = "Quick-action buttons for mobile users."
		v3153 = _FH_NV
		v3152 = function()
		end
		v2969(v3155, "Mobile Mini Panel", v3154, v3153(v3152))
		v2969 = nil
		v3155 = v570
		v3154 = "Small Server Finder"
		v3153 = "Find/hop to a low-population server (Rebirth 0 only)"

		v3152 = function(...)
			if not nil then
				return
			end
			if v3156() ~= false then
				return
			end
			if v2969 and v2969.set then
				local function v5587()
					v2969.set(false)
				end

				pcall(_FH_NV(v5587))
			end

			local function v5588()
				local function v5589()
					LocalPlayer36:Kick("MUST BE ON A REBIRTH 0 ACCOUNT!")
				end

				pcall(_FH_NV(v5589))
			end

			task.spawn(v5588)
		end

		v3155 = v3155(Main.scroll, v3154, v3153, v3152)
		v2969 = v3155
		v3040 = true
		v3155 = v3030.panel
		v3155.Visible = v3074.get()
		v3155 = v3006.panel
		v3155.Visible = v3174.get()
		v3155 = v580
		v3154 = "Panels"
		v3155(v2932.scroll, v3154)
		v3155 = v570
		local scroll32 = v2932.scroll
		v3154 = "Quick Panel"
		v3153 = "Per-player quick admin commands"
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll32, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll33 = v2932.scroll
		v3154 = "Admin Spammer"
		v3153 = "Spam admin commands per-player"
		v3152 = _FH_NV
		local v3175 = v2931
		v3151 = function()
		end
		v3155(scroll33, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll34 = v2932.scroll
		v3154 = "DatShawn Spam"
		v3153 = "DatShawn's per-player AP spam, remote + cooldown linked"
		v3152 = _FH_NV

		v3151 = function()
			if _G.DatShawnSpamPanel then
				if _G.DatShawnSpamPanel.bubble then
				end
				if _G.DatShawnSpamPanel.main then
				end
				if _G.DatShawnSpamPanel.config then
				end
			end
		end

		v3155(scroll34, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll35 = v2932.scroll
		v3154 = "Quick Pickup"
		v3153 = "Near-instant pickup (0.1s) for brainrots in YOUR base."
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll35, v3154, v3153, v3152(v3151))
		v3155 = v580
		v3154 = "Trade & Logging"
		v3155(v2932.scroll, v3154)
		v3155 = v570
		local scroll36 = v2932.scroll
		v3154 = "Auto Kick On Steal"
		v3153 = "Kick yourself the moment a steal lands."
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll36, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll37 = v2932.scroll
		v3154 = "Trade Region Block"
		v3153 = "Makes trading look region-locked: Send buttons appear quietly disabled (\"Unavailable\") with a subtle in-game note."
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll37, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll38 = v2932.scroll
		v3154 = "Logger Protector"
		v3153 = "Kicks you if trade GUIs are forcibly disabled."
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll38, v3154, v3153, v3152(v3151))
		v3155 = v570
		local scroll39 = v2932.scroll
		v3154 = "Hide Trade Plaza"
		v3153 = "Disables Trade Plaza portal (prompt off, label swap)"
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll39, v3154, v3153, v3152(v3151))
		v3155 = v580
		v3154 = "Animations"
		v3155(v2932.scroll, v3154)
		v3155 = v570
		local scroll40 = v2932.scroll
		v3154 = "Animations Panel"
		v2928 = "Apply animation packs in Gamma style."
		v3152 = _FH_NV
		v3151 = function()
		end
		v3155(scroll40, v3154, v3153, v3152(v3151))
		v3155 = v580
		v3154 = "Reset"
		v3155(v2932.scroll, v3154)
		v3155 = v572
		v3154 = "Reset All Configs"
		v3153 = "Restore every panel to its original default position."

		v3152 = function(...)
			local v5590, v5591, v5592, v5593, v5594, v5595
			v5595, v5594, v5593 = ipairs(v2889)
			local v5596 = v5593
			while true do
				local v5597
				v5596, v5597 = v5595(v5594, v5596)
				if v5596 == nil then
					break
				else
					local pcall34 = pcall
					v5592 = _FH_NV
					local v5598 = v5597

					v5590 = function(...)
						local panel3 = v5598.panel
						local v5608 = { Position = v5598.defaultPos }
						v68(panel3, nil, v5608)
						v560.set(v5598.key, nil)
					end

					pcall34(v5592(v5590))
					v5593 = v5597
				end
			end
			local v5599 = v3065
			if v5599 then
				v5599 = v3065.QPWin
			end
			if v5599 then
				v5599 = v3065.QPBorderFrame
			end
			if v5599 then
				local v5600 = v68
				local QPWin6 = v3065.QPWin
				local v5601 = { Position = UDim2.new(0, 16, 0.55, 0) }
				v5600(QPWin6, v5593, v5601)
				local v5602 = v68
				local QPBorderFrame6 = v3065.QPBorderFrame
				local v5603 = {}
				v5590 = 0
				v5591 = 14
				v5592 = UDim2.new(v5590, v5591, 0.55, -2)
				v5603.Position = v5592
				v5602(QPBorderFrame6, v5593, v5603)
				v5599 = v560.set
				v5599("qp_pos", nil)
			end
			local UnlockBasePanel = v5599:FindFirstChild("UnlockBasePanel")
			local v5604 = "UBGradBorder"
			local FindFirstChild37 = v5599:FindFirstChild(v5604)
			if UnlockBasePanel then
				local Offset10 = UnlockBasePanel.Size.X.Offset
				v5604 = UnlockBasePanel.Size.Y.Offset
				local v5605 = v68
				UDim2.new(0.5, -Offset10 / 2, 1, -(v5604 + 82))
				v5605(v5590, v5591, {})
				if FindFirstChild37 then
					local v5606 = v68
					UDim2.new(0.5, -(Offset10 + 4) / 2, 1, -(v5604 + 4 + 80))
					v5606(v5590, v5591, {})
				end
				v5592 = v560.set
				v5592("panelpos:UnlockBase", nil)
			end
			local v5607 = v68
			UDim2.new(0.5, 0, 0.5, 0)
			v5607(v5604, v5592, {})
			v560.set("reopen_pos", nil)
		end

		v3155(v2932.scroll, v3154, v3153, v3152)
		v3155 = nil

		local function v3176()
			Instance.new("Frame")
			v3155.Size = UDim2.new(0, 208, 0, 214)
			local Side = v558.Side
			v3155.BackgroundColor3 = Side
			v3155.BorderSizePixel = 0
			v3155.Visible = false
			v3155.ZIndex = 100
			v3155.Parent = Side
			v87(v3155)
			local v5609 = v65
			v5609(v3155, "Side")
			v5609(v3155, 10)
			v69(v3155, 2, 0, 0)
			Instance.new("Frame")
			UDim2.new(1, 0, 0, 24)
			local v5610 = v65
			v5610(1, "BgDeep")
			v5610(1, 10)
			Instance.new("Frame")
			UDim2.new(1, 0, 0, 8)
			UDim2.new(0, 0, 1, -8)
			local v5611 = v65
			v5611(0, "BgDeep")
			v5611(0, "Color Picker", 10, v558.Text, Enum.Font.GothamBold)
			UDim2.new(1, -30, 1, 0)
			UDim2.new(0, 10, 0, 0)
			local TextButton25 = Instance.new("TextButton")
			UDim2.new(0, 20, 0, 20)
			UDim2.new(1, -22, 0, 2)

			local function v5612()
				({}).TextColor3 = v558.Text
			end

			TextButton25.MouseEnter:Connect(_FH_NV(v5612))

			local function v5613()
				({}).TextColor3 = v558.TextDim
			end

			TextButton25.MouseLeave:Connect(_FH_NV(v5613))
			local Frame61 = Instance.new("Frame")
			UDim2.new(0, 158, 0, 124)
			UDim2.new(0, 10, 0, 32)
			Color3.fromRGB(255, 0, 0)
			v3155(255, 5)
			Instance.new("Frame")
			UDim2.new(1, 0, 1, 0)
			Color3.fromRGB(255, 255, 255)(255, 5)
			Instance.new("UIGradient")
			ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1))
			local new43 = NumberSequence.new
			local v5614 = table.create(1)
			NumberSequenceKeypoint.new(0, 0)
			local new44 = NumberSequenceKeypoint.new
			new43(v5614)
			Instance.new("Frame")
			UDim2.new(1, 0, 1, 0)
			Color3.fromRGB(0, 0, 0)(0, 5)
			Instance.new("UIGradient")
			local new45 = ColorSequence.new
			local v5615 = Color3.new(0, 0, 0)
			local new46 = Color3.new
			new44(1, 1)
			new45(v5615, new46(0, 0, 0))
			local new47 = NumberSequence.new
			local v5616 = table.create(1)
			NumberSequenceKeypoint.new(0, 1)
			local new48 = NumberSequenceKeypoint.new
			new47(v5616)
			local Frame62 = Instance.new("Frame")
			UDim2.new(0, 10, 0, 10)
			Vector2.new(0.5, 0.5)
			local v5617 = UDim2.new(1, 0, 0, 0)
			v5617(1, 5)
			v5617(1, v558.White, 2, 0)
			local Frame63 = Instance.new("Frame")
			UDim2.new(0, 18, 0, 124)
			UDim2.new(0, 174, 0, 32)
			Color3.fromRGB(255, 255, 255)
			v3155(255, 4)
			Instance.new("UIGradient")
			local new49 = ColorSequence.new
			local v5618 = table.create(6)
			local new50 = ColorSequenceKeypoint.new
			local v5619 = Color3
			v5619 = v5619.fromRGB
			local v5620 = 255
			local v5621 = 0
			local v5622 = 0
			new48(1, 0)
			new50(0, v5619(v5620, v5621, v5622))
			local new51 = ColorSequenceKeypoint.new
			v5619 = 0.167
			v5620 = Color3
			v5620 = v5620.fromRGB
			v5621 = 255
			v5622 = 255
			local v5623 = 0
			new51(v5619, v5620(v5621, v5622, v5623))
			v5619 = ColorSequenceKeypoint
			v5619 = v5619.new
			v5620 = 0.333
			v5621 = Color3
			v5621 = v5621.fromRGB
			v5622 = 0
			v5623 = 255
			v5619 = v5619(v5620, v5621(v5622, v5623, 0))
			v5620 = ColorSequenceKeypoint
			v5620 = v5620.new
			v5621 = 0.5
			v5622 = Color3
			v5622 = v5622.fromRGB
			v5623 = 0
			local v5624 = 255
			v5620 = v5620(v5621, v5622(v5623, 255, v5624))
			v5621 = ColorSequenceKeypoint
			v5621 = v5621.new
			v5622 = 0.667
			v5623 = Color3
			v5623 = v5623.fromRGB
			v5624 = 0
			local v5625 = 255
			v5621 = v5621(v5622, v5623(0, v5624, v5625))
			v5622 = ColorSequenceKeypoint
			v5622 = v5622.new
			v5623 = 0.833
			v5624 = 255
			v5625 = 0
			v5622 = v5622(v5623, Color3.fromRGB(v5624, v5625, 255))
			v5623 = ColorSequenceKeypoint
			v5623 = v5623.new
			v5624 = Color3
			v5624 = v5624.fromRGB
			v5625 = 255
			v5623(1, v5624(v5625, 0, 0))
			new49(v5618)
			local Frame64 = Instance.new("Frame")
			v5619 = 0
			v5620 = 4
			UDim2.new(1, 4, v5619, v5620)
			Vector2.new(0.5, 0.5)
			v5619 = 0
			v5620 = 0
			UDim2.new(0.5, 0, v5619, v5620)
			local White4 = v558.White
			White4(Frame64, 2)
			v5619 = 0
			v5620 = 0
			v5621 = 0
			local v5626 = v5619
			local v5627 = v5620
			v5619 = 1
			v5620 = 0.3
			White4(Frame64, Color3.fromRGB(v5626, v5627, v5621), v5619, v5620)
			local TextButton26 = Instance.new("TextButton")
			v5619 = 182
			v5620 = 0
			v5621 = 44
			UDim2.new(0, v5619, v5620, v5621)
			v5619 = 10
			v5620 = 0
			v5621 = 162
			UDim2.new(0, v5619, v5620, v5621)
			local v5628 = v3155
			v5619 = 6
			v5628(TextButton26, v5619)
			v5619 = v558.White
			v5620 = 1.4
			v5621 = 0.3
			local v5629 = v5628(TextButton26, v5619, v5620, v5621)
			local MouseEnter3 = TextButton26.MouseEnter
			v5619 = MouseEnter3
			local Connect23 = MouseEnter3.Connect
			v5620 = _FH_NV

			v5621 = function()
				({}).Transparency = 0
			end

			Connect23(v5619, v5620(v5621))
			local MouseLeave7 = TextButton26.MouseLeave
			v5619 = MouseLeave7
			local Connect24 = MouseLeave7.Connect
			v5620 = _FH_NV

			v5621 = function()
				({}).Transparency = 0.3
			end

			Connect24(v5619, v5620(v5621))
			local v5630 = { slot = 1, h = 0.75, s = 1, v = 0.97 }
			v5619 = v566.c1
			v5630.pending = v5619
			v5619 = nil
			v5620 = _FH_NV

			v5621 = function()
				local v5641 = Color3.fromHSV(v5630.h, v5630.s, v5630.v)
				v5630.pending = v5641
				Color3.fromHSV(v5630.h, 1, 1)
				UDim2.new(v5630.s, 0, 1 - v5630.v, 0)
				UDim2.new(0.5, 0, v5630.h, 0)
				TextButton26.BackgroundColor3 = v5641
			end

			v5620 = v5620(v5621)
			v5619 = v5620
			v5620 = nil
			v5621 = _FH_NV

			v5622 = function(...)
				local v5642 = (nil).R
				local v5643 = (nil).G
				local v5644 = (nil).B
				local v5645 = math.max(nil, nil, v5644)
				local v5646 = v5645 - math.min(nil, v5644, v5644)
				local _
				if 0 < v5646 then
					if v5645 == v5642 then
					elseif v5645 == v5643 then
					end
				end
				local v5647
				v5647 = 0 < v5645
				v5647 = v5647 and v5646 / v5645 or 0
				return nil, nil, 0
			end

			v5621 = v5621(v5622)
			v5620 = v5621
			v5621 = nil
			v5622 = _FH_NV

			v5623 = function(...)
				v5630.slot = nil
				local v5648
				v5648 = not not false
				if v5648 then
					v5648 = v566.c1
				end
				local v5649, v5650, v5651
				v5651, v5650, v5649 = v5620(nil)
				v5630.h = v5651
				v5630.s = v5650
				v5630.v = v5649
				v5619()
				local AbsoluteSize22 = v559.AbsoluteSize
				local v5652
				if v5650 then
					local v5653 = math.max(4, math.floor((AbsoluteSize22.X - 208) / 2))
					math.max(4, math.floor((AbsoluteSize22.Y - 214) / 2))
					v3155.Position = UDim2.new(0, v5653, 0, nil)
				else
					v5652 = not not false
					if not v5652 then
						v5652 = v598
					end
					local AbsolutePosition9 = v5652.AbsolutePosition
					local max17 = math.max
					local min2 = math.min
					local v5654 = AbsolutePosition9.X
					local v5655 = AbsoluteSize22.X - 216
					max17(8, min2(v5654 - 100, v5655))
					v3155.Position = UDim2.new(0, v5655, 0, nil)
				end
				v3155.Visible = true
			end

			v5622 = v5622(v5623)
			v5621 = v5622
			v5622 = nil
			v5623 = _FH_NV

			local function v5631()
				local set12 = v560.set
				local v5656 = table.create(2)
				math.floor(v566.c1.R * 255 + 0.5)
				math.floor(v566.c1.G * 255 + 0.5)
				local floor5 = math.floor
				local v5657 = v566.c1.B
				set12("theme_c1", v5656)
				local set13 = v560.set
				local v5658 = table.create(2)
				math.floor(v566.c2.R * 255 + 0.5)
				math.floor(v566.c2.G * 255 + 0.5)
				local floor6 = math.floor
				local v5659 = v566.c2.B
				floor5(v5657 * 255 + 0.5)
				set13("theme_c2", v5658)
				local set14 = v560.set
				local v5660 = table.create(2)
				math.floor(v558.Bg.R * 255 + 0.5)
				math.floor(v558.Bg.G * 255 + 0.5)
				local floor7 = math.floor
				local v5661 = v558.Bg.B
				floor6(v5659 * 255 + 0.5)
				set14("theme_bg", v5660)
				floor7(v5661 * 255 + 0.5)
			end

			v5623 = v5623(v5631)
			v5622 = v5623
			v5623 = nil

			v5624 = function()
				if v5630.slot == 1 then
					v546()
				end
				v5622()
			end

			v5623 = _FH_NV(v5624)
			v5624 = _FH_NV

			v5625 = function()
				v5623()
				v5622()
			end

			v5624 = v5624(v5625)
			local v5632 = v5624
			v5624 = v599.Activated
			v5625 = v5624
			v5624 = v5624.Connect

			local function v5633()
				v5621(1)
			end

			v5624(v5625, _FH_NV(v5633))
			v5624 = v600.Activated
			v5625 = v5624
			v5624 = v5624.Connect

			local function v5634()
				v5621(2)
			end

			v5624(v5625, _FH_NV(v5634))
			v5624 = TextButton25.Activated
			v5625 = v5624
			v5624 = v5624.Connect

			local function v5635()
				v3155.Visible = false
			end

			v5624(v5625, _FH_NV(v5635))
			v5624 = TextButton26.Activated
			v5625 = v5624
			v5624 = v5624.Connect
			v5624(v5625, v5632)
			v5624 = false
			v5625 = false

			local function v5636(...)
				local _leave80 = false
				local v5662 = nil
				if nil ~= Enum.UserInputType.MouseButton1 then
					v5662 = Enum.UserInputType.Touch
					if nil ~= v5662 then
						_leave80 = true
					end
				end
				if not _leave80 then
					local AbsolutePosition10 = Frame61.AbsolutePosition
					local AbsoluteSize23 = Frame61.AbsoluteSize
					local clamp21 = math.clamp
					local v5663 = (v5662.X - AbsolutePosition10.X) / AbsoluteSize23.X
					clamp21(v5663, 0, 1)
					math.clamp((v5663.Y - AbsolutePosition10.Y) / AbsoluteSize23.Y, 0, 1)
					v5619()
					v5623()
				end
			end

			Frame61.InputBegan:Connect(_FH_NV(v5636))

			local function v5637(...)
				if nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
				end
			end

			Frame61.InputEnded:Connect(_FH_NV(v5637))

			local function v5638(...)
				local _leave81 = false
				local v5664 = nil
				if nil ~= Enum.UserInputType.MouseButton1 then
					v5664 = Enum.UserInputType.Touch
					if nil ~= v5664 then
						_leave81 = true
					end
				end
				if not _leave81 then
					local AbsolutePosition11 = Frame63.AbsolutePosition
					local AbsoluteSize24 = Frame63.AbsoluteSize
					math.clamp((v5664.Y - AbsolutePosition11.Y) / AbsoluteSize24.Y, 0, 1)
					v5619()
					v5623()
				end
			end

			Frame63.InputBegan:Connect(_FH_NV(v5638))

			local function v5639(...)
				if nil == Enum.UserInputType.MouseButton1 or nil == Enum.UserInputType.Touch then
				end
			end

			Frame63.InputEnded:Connect(_FH_NV(v5639))

			local function v5640(...)
				local v5665 = nil
				if nil ~= Enum.UserInputType.MouseMovement then
					v5665 = Enum.UserInputType.Touch
					if nil ~= v5665 then
						return
					end
				end
				if v5624 then
					local AbsolutePosition12 = Frame61.AbsolutePosition
					local AbsoluteSize25 = Frame61.AbsoluteSize
					local clamp22 = math.clamp
					local v5666 = (v5665.X - AbsolutePosition12.X) / AbsoluteSize25.X
					clamp22(v5666, 0, 1)
					math.clamp((v5666.Y - AbsolutePosition12.Y) / AbsoluteSize25.Y, 0, 1)
					v5619()
					v5623()
				elseif v5625 then
					local AbsolutePosition13 = Frame63.AbsolutePosition
					local AbsoluteSize26 = Frame63.AbsoluteSize
					math.clamp((v5665.Y - AbsolutePosition13.Y) / AbsoluteSize26.Y, 0, 1)
					v5619()
					v5623()
				end
			end

			UserInputService.InputChanged:Connect(_FH_NV(v5640))
		end

		v3176()
		v3154 = nil
		v3153 = _FH_NV

		v3152 = function()
			v560.get("__profiles", nil)
			local v5667 = type(nil)
			if v5667 ~= "table" then
				v5667 = {}
			end
			return v5667
		end

		v3153 = v3153(v3152)
		v3154 = v3153
		v3153 = nil
		v3152 = _FH_NV

		v3151 = function(...)
			return nil
		end

		v3152 = v3152(v3151)
		v3153 = v3152
		v3152 = nil
		v3151 = _FH_NV

		v3150 = function(...)
			local v5668 = type(nil)
			if v5668 ~= "table" then
				return v5668
			end
			local v5669, v5670, v5671
			v5671, v5670, v5669 = pairs(nil)
			repeat
				local _
				v5669, _ = v5671(v5670, v5669)
			until v5669 == nil
			return v5671
		end

		v3151 = v3151(v3150)
		v3152 = v3151
		v3151 = nil
		v3150 = _FH_NV

		v3149 = function(...)
			local v5672, v5673, v5674, v5675
			v5675, v5674, v5673 = pairs(v560.data)
			while true do
				local v5676
				v5673, v5676 = v5675(v5674, v5673)
				if v5673 == nil then
					break
				elseif not v3153(v5672) then
					v3152(v5676)
					v5672 = v5676
				end
			end
			return v5675
		end

		v3150 = v3150(v3149)
		v3151 = v3150
		v3150 = nil
		v3149 = _FH_NV

		v3148 = function(...)
			local v5677, v5678
			local v5679 = 0
			local v5680 = 0
			local v5681, v5682, v5683
			v5683, v5682, v5681 = pairs(nil)
			local v5684 = v5681
			while true do
				local v5685
				v5684, v5685 = v5683(v5682, v5684)
				if v5684 == nil then
					break
				else
					v5678 = type(v5677)
					if v5678 == "string" then
						v5678 = v5684:sub(1, 7)
						if v5678 == "toggle:" and v5685 == true then
							v5679 = v5679 + 1
							v5681 = v5685
							v5677 = v5684
						else
							v5678 = v5684:sub(1, 7)
							if v5678 == "slider:" then
								v5680 = v5680 + 1
								v5681 = v5685
								v5677 = v5684
							else
								v5681 = v5685
								v5677 = v5684
							end
						end
					else
						v5681 = v5685
					end
				end
			end
			return string.format("%d toggles on  •  %d sliders set", v5681, v5678)
		end

		v3149 = v3149(v3148)
		v3150 = v3149
		v3149 = nil
		v3148 = _FH_NV

		local function v3177(...)
			local v5686 = nil
			local tostring26 = tostring
			if not v5686 then
				v5686 = ""
			end
			tostring26(v5686):gsub("^%s+", ""):gsub("%s+$", "")
			return false
		end

		v3148 = v3148(v3177)
		v3149 = v3148
		v3148 = nil

		v3147 = function()
			v3154()
			pcall(v560.flush)
		end

		v3148 = _FH_NV(v3147)

		local function v3178(...)
			local v5687 = nil
			local v5688 = v3154()[nil]
			if type(nil) ~= "table" then
				return
			end
			for _, _ in pairs(nil) do
				if not v3153(nil) then
					v5687 = v3152
					v560.set(nil, v5687(nil))
				end
			end
			for _, v5689 in ipairs(v601) do
				local pcall35 = pcall
				local apply = v5689.apply
				v5687 = v5688[v5689.key]
				pcall35(apply, v5687)
			end

			local function v5690(...)
				local v5694 = v5688[nil]
				if type(nil) == "table" and #v5694 == 3 then
					return Color3.fromRGB(v5694[1], v5694[2], nil)
				end
			end

			_FH_NV(v5690)
			local theme_c1 = (nil)("theme_c1")
			local theme_c2 = (nil)("theme_c2")
			local theme_bg = (nil)("theme_bg")
			if theme_c1 then
				local pcall36 = pcall
				v5687 = _FH_NV

				local function v5691()
					local v5695 = v597
					if v5695 then
						v597.BackgroundColor3 = v5695
					end
				end

				pcall36(v5687(v5691))
			end
			if theme_bg then
				v544(v5687)
				local pcall37 = pcall
				v5687 = _FH_NV

				local function v5692()
					if v598 then
						v598.BackgroundColor3 = v558.Bg
					end
				end

				pcall37(v5687(v5692))
			end
			if theme_c1 or theme_c2 then
				v5687 = v546
				pcall(v5687)
			end
			for _, v5693 in ipairs(v5687) do
				pcall(v5693.apply, v5688[v5693.key])
			end
			pcall(v560.flush)
		end

		v3147 = v580
		v3147(v2953.scroll, "Save / Load Configs")
		v3147 = ""
		v3146 = 36
		local v3179 = v581(v2953.scroll, v3146)
		v3146 = "TextBox"
		local v3180 = Instance.new(v3146)
		v3146 = UDim2
		v3146 = v3146.new
		v3145 = 1
		v3146 = v3146(v3145, -20, 0, 22)
		v3180.Size = v3146
		v3146 = UDim2
		v3146 = v3146.new
		v3145 = 0
		v3146 = v3146(v3145, 10, 0.5, -11)
		v3180.Position = v3146
		v3146 = v558.Soft
		v3180.BackgroundColor3 = v3146
		v3146 = v65
		v3145 = v3180
		v3146(v3145, "Soft")
		v3180.BorderSizePixel = 0
		v3180.Text = ""
		v3180.PlaceholderText = "Config name..."
		v3146 = v558.TextMute
		v3180.PlaceholderColor3 = v3146
		v3146 = Enum
		v3146 = v3146.Font
		v3146 = v3146.GothamMedium
		v3180.Font = v3146
		v3146 = math
		v3146 = v3146.floor
		v3145 = 13.479999999999999
		v3146 = v3146(v3145)
		v3180.TextSize = v3146
		v3146 = v558.Text
		v3180.TextColor3 = v3146
		v3180.ClearTextOnFocus = false
		v3180.ZIndex = 6
		v3180.Parent = v3179
		v3146 = v561
		v3145 = v3180
		v3146(v3145, 5)
		v3146 = v568
		v3145 = v3180
		v3146(v3145, 0, 0, 8, 8)
		v3146 = v69
		v3145 = v3180
		v3146(v3145, 1, 0.3, 0)
		v3145 = v3180
		v3146 = v3180.GetPropertyChangedSignal
		v3146 = v3146(v3145, "Text")
		v3145 = v3146
		v3146 = v3146.Connect
		local function v3181()
		end
		v3146(v3145, _FH_NV(v3181))
		v3146 = nil
		v3145 = nil

		local function v3182()
			local v5696 = v3147
			if v3149(v5696) then
				pcall(v5696, "Saved config: " .. v3147, true)
				if v3145 then
					v3145()
				end
			else
				pcall(v5696, "Enter a config name first", false)
			end
		end

		v572(
			v2953.scroll,
			"Save Current Config",
			"Save all current settings under the name above.",
			_FH_NV(v3182)
		)
		v580(v2953.scroll, "Saved Configs")
		v3146 = Instance.new("Frame")
		v3146.Size = UDim2.new(1, -8, 0, 0)
		v3146.AutomaticSize = Enum.AutomaticSize.Y
		v3146.BackgroundTransparency = 1
		v3146.BorderSizePixel = 0
		v3146.Parent = v2953.scroll
		local UIListLayout2 = Instance.new("UIListLayout")
		UIListLayout2.FillDirection = Enum.FillDirection.Vertical
		UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout2.SortOrder = Enum.SortOrder.Name
		UIListLayout2.Padding = UDim.new(0, 6)
		UIListLayout2.Parent = v3146

		local function v3183(...)
			local Frame65 = Instance.new("Frame")
			UDim2.new(1, 0, 0, 48)
			local v5697 = v3146
			v5697(1, 8)
			local Line = v558.Line
			v5697(1, Line, 1, 0.35)
			v562(1, Line, 12, v558.Text, Enum.Font.GothamBold)
			UDim2.new(1, -150, 0, 16)
			local v5698 = 0
			UDim2.new(0, 10, v5698, 7)
			local v5699 = v562
			local v5700 = v3150
			if not v5698 then
				v5698 = {}
			end
			v5699(0, v5700(v5698), 9, v558.TextDim, Enum.Font.Gotham)
			UDim2.new(1, -150, 0, 12)
			UDim2.new(0, 10, 0, 26)

			local function v5701()
				local TextButton27 = Instance.new("TextButton")
				TextButton27.Size = UDim2.new(0, 60, 0, 26)
				TextButton27.Position = UDim2.new(1, 60, 0.5, -13)
				TextButton27.BackgroundColor3 = v558.Soft
				TextButton27.Font = Enum.Font.GothamBold
				TextButton27.TextSize = 13
				TextButton27.AutoButtonColor = false
				TextButton27.BorderSizePixel = 0
				TextButton27.ZIndex = 6
				TextButton27.Parent = 13
				;(13)(TextButton27, 6)
				;(13)(TextButton27, v558.Line, 1, 0.3)
				return TextButton27
			end

			local Activated6 = _FH_NV(v5701)("Load", -134, v558.Green).Activated
			local Connect25 = Activated6.Connect
			local v5702 = nil
			local function v5703(...)
			end
			Connect25(Activated6, _FH_NV(v5703))
			local v5704 = nil

			local function v5705()
				if v3145 then
					v3145()
				end
			end

			Connect25("Delete", -68, Color3.fromRGB(240, 90, 90)).Activated:Connect(_FH_NV(v5705))
		end

		v3145 = function(...)
			local v5706
			for _, v5707 in ipairs(v3146:GetChildren()) do
				v5706 = v5707:IsA("Frame")
				if v5706 then
					v5706 = v5707.Destroy
					v5706(v5707)
				end
			end
			local v5708 = v3154()
			local v5709, v5710, v5711
			v5711, v5710, v5709 = pairs(v5706)
			local v5712 = v5710
			while true do
				local _
				v5709, _ = v5711(v5710, v5709)
				if v5709 == nil then
					break
				else
					v5712 = v5709
				end
			end

			local function v5713(...)
				local v5716
				v5716 = (nil)(nil) < (nil)(nil)
				return v5716
			end

			table.sort(v5712, _FH_NV(v5713))
			local v5714 = #{}
			if v5714 == 0 then
				UDim2.new(1, 0, 0, 26)
				return
			end
			for _, v5715 in ipairs(v5712) do
				v3183(nil, v5708[v5715])
			end
		end

		v3145()
		v3154 = Main
		v604(v3154)
		local defer2 = task.defer
		v3154 = _FH_NV

		v3153 = function()
			pcall(v546)
		end

		defer2(v3154(v3153))
		v3154 = "UIScale"
		Instance.new(v3154)
		v90.Scale = v576.desiredScale
		v90.Parent = v596
		local new31 = TweenInfo.new
		v3154 = 0.22
		v3153 = Enum
		v3153 = v3153.EasingStyle
		v3153 = v3153.Quart
		v3152 = Enum
		v3152 = v3152.EasingDirection
		v3152 = v3152.Out
		local v3184 = new31(v3154, v3153, v3152)
		v3154 = TweenInfo
		v3154 = v3154.new
		v3153 = 0.16
		v3152 = Enum
		v3152 = v3152.EasingStyle
		v3152 = v3152.Quart
		v3151 = Enum
		v3151 = v3151.EasingDirection
		v3151 = v3151.In
		v3154 = v3154(v3153, v3152, v3151)
		v3153 = v560.get
		v3152 = "hub_open"
		v3151 = true
		v3153 = v3153(v3152, v3151)
		v3153 = v95
		if not v3153 then
			v596.Visible = false
			v90.Scale = 0
		end
		v3153 = nil
		local v3185 = v3154

		v3152 = function(...)
			if nil == v95 then
				return
			end
			v560.set("hub_open", nil)
			local v5717 = v3153
			if v5717 then
				local v5718 = v3153
				v5717 = v5718.Cancel
				v5717(v5718)
			end
			if nil then
				local v5719 = v90.Scale
				if v5719 < 0.01 then
					local v5720 = v576.desiredScale
					if not v5720 then
						v5720 = 1
					end
					v5719 = v5720 * 0.85
					v90.Scale = v5719
				end
				local Create20 = v5719.Create
				local v5721 = v90
				if v576.desiredScale then
				end
				Create20(v5719, v5721, nil, {})
				v3153:Play()
			else
				v3155.Visible = false
				v5717:Create(v90, v3185, {})
				local v5722 = v3153
				local function v5723()
				end
				v5722.Completed:Connect(_FH_NV(v5723))
				v5722:Play()
			end
		end

		v3152 = UserInputService.InputBegan
		v3151 = v3152
		v3152 = v3152.Connect
		v3150 = _FH_NV

		v3149 = function(...)
			local GetFocusedTextBox = UserInputService:GetFocusedTextBox()
			if GetFocusedTextBox then
				return
			end
			if GetFocusedTextBox == Enum.UserInputType.Keyboard and
				(nil == Enum.KeyCode.LeftControl or nil == Enum.KeyCode.RightControl) then
				v96(not v95)
			end
		end

		v3152(v3151, v3150(v3149))

		v3152 = function(...)
			if not (nil == v605 or not (nil).IsA(nil, "GuiObject")) then
				local v5724 = nil
				local function v5725()
				end
				pcall(_FH_NV(v5725))
			end
		end

		v3151 = task
		v3151 = v3151.defer
		v3150 = _FH_NV
		local v3186 = v3152

		v3149 = function(...)
			v559:GetChildren()
			for v5726, _ in ipairs(nil) do
				if v5726 % 8 == 0 then
					task.wait()
				end
			end
		end

		v3151(v3150(v3149))
		v3151 = v559.ChildAdded
		v3150 = v3151
		v3151 = v3151.Connect
		v3149 = _FH_NV
		local v3187 = v3152
		v3148 = function()
		end
		v3151(v3150, v3149(v3148))
	end

	task.spawn(v606)
	return
end

task.spawn(v23)
