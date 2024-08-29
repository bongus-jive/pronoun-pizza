-- i feel oh so woke

function build(dir, config, params, ...)
	if config.pat_pronounbuilder then
		require(config.pat_pronounbuilder)
		config, param = build(dir, config, params, ...)
	end

	if not params.pat_pronouns then
		local list = root.assetJson("/pat/pronounpizza/pronouns.sussy")
		local name = string.lower(params.shortdescription or config.shortdescription)

		params.pat_pronouns = list[1][math.random(1, #list)]
		params.shortdescription = string.format("%s^reset; %s", params.pat_pronouns, name)
	end

	return config, params
end
