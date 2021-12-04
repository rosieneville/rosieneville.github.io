clear all

use "C:\Users\rosie\Documents\meatconsumptiongdp\gdppercap2017.dta", clear

merge 1:1 country using "C:\Users\rosie\Documents\meatconsumptiongdp\meatconsumptionbycountry"

keep if _merge == 3 
drop _merge

save "C:\Users\rosie\Documents\meatconsumptiongdp\meatgdp.dta", replace

reg  meatfoodsupplyquantitykgcapitayr outputsiderealgdppercapitagdppc

ols = outputsiderealgdppercapitagdppc_*.0012254  + 27.27975 

rename outputsiderealgdppercapitagdppc gdppc
rename meatfoodsupplyquantitykgcapitayr meatkgcyr