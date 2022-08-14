-- of course you have blue hair and pronouns

require "/items/buildscripts/buildfood.lua"
local oldbuild = build

function build(d,c,p,...)
	if oldbuild then c,p = oldbuild(d,c,p,...) end
	
	if not p.pat_pronouns then
		local list = root.assetJson("/items/generic/food/pat_pronounpizza.sussy")
		
		p.pat_pronouns = list[math.random(1, #list)]
		p.shortdescription = p.pat_pronouns.."^reset; "..string.lower(p.shortdescription or c.shortdescription)
	end
	
	return c,p
end
