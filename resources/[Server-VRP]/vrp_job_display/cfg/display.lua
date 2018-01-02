
local cfg = {}

cfg.firstjob = false -- set this to your first job, for example "citizen", or false to disable

-- text display css
cfg.display_css = [[
.div_job{
  position: absolute;
  top: 103px;
  font-weight:bold;
  right: 10px;
  font-size: 35px;
  color: #ffffff;
  font-family: 'Pricedown';
  text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.540302px 0.841471px 0px, rgb(0, 0, 0) -0.416147px 0.909297px 0px, rgb(0, 0, 0) -0.989992px 0.14112px 0px, rgb(0, 0, 0) -0.653644px -0.756802px 0px, rgb(0, 0, 0) 0.283662px -0.958924px 0px, rgb(0, 0, 0) 0.96017px -0.279415px 0px;
  ]]

-- icon display css
cfg.icon_display_css = [[
.div_job_icon{
  display: none;
  position: absolute;
}
]]

-- list of ["group"] => css for icons
cfg.group_icons = {
      ["Airline Pilot"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Hacker"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Weapons Smuggler"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Drug Dealer"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Lawyer"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["EMS"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Police Officer"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Unemployed"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Cargo Pilot"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Medical Transport"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Fisher"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Bankdriver"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Delivery"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["Mechanic"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
	      ["UBER"] = [[
    .div_job_icon{
      content: url(https://i.imgur.com/2HT6Dta.png);
      height: 35px;
      width: 35px;
	    position: absolute;
      top: 113px;
      right: 200px;
    }
  ]], -- this is an example, add more under it using the same model, leave the } at the end.
}
return cfg

-- top: 113px;
-- right: 200px;







