module ApplicationHelper

	def point_spreadify(point_spread)
		return point_spread.to_s if point_spread < 0
		return "EVEN" if point_spread == 0
		return "+#{point_spread.to_s}" if point_spread > 0
	end

end
