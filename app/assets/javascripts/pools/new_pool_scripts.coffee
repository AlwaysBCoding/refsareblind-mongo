$ ->
	if $("body").hasClass("pools-new")
		## Select which pool bundle is currently active, display description
		$(".new-pool-wizard").on "click", ".pool-bundle", (e) ->
			data_name = $(this).attr("data-name")

			$(".pool-bundle").removeClass("active")
			$(".bundle-description, .custom-pool-options").addClass("hidden")
			$(".pool-bundle-type").val(data_name)

			$(this).addClass("active")
			$(".bundle-description[data-name=#{data_name}]").removeClass("hidden")

		  ## If bundle is custom, slide the options
			if data_name is "roll-custom"
				$(".custom-pool-options").removeClass("hidden")
