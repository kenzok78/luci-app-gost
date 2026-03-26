-- Copyright (C) 2025 ImmortalWrt.org
-- SPDX-License-Identifier: Apache-2.0

module("luci.controller.gost", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/gost") then
		return
	end

	local page
	page = entry({"admin", "services", "gost"}, cbi("gost"), _("GOST"), 100)
	page.dependent = true
end
