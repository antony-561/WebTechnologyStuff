function dateDisplay()
			{
				const dateobj = new Date();
				document.getElementById("dateNorm").innerHTML = dateobj.toString();
				document.getElementById("dateUTC").innerHTML = dateobj.toUTCString();
				document.getElementById("dateISO").innerHTML = dateobj.toISOString();
			}
			function findTimeElap()
			{
				let curDate = new Date();
				
				let selDate = document.getElementById("datePick").valueAsDate;
				
				let diffDate = curDate - selDate;
				let inDays = Math.floor(diffDate/(1000*60*60*24));
				let inHours = Math.floor(diffDate/(1000*60*60) - 5) ;
				
				
				if(inDays<0)
				{
					let strDay = "Days Left : " + Math.abs(inDays);
					let strHrs = "Time Left : " + Math.abs(inHours) + " Hours";
					document.getElementById("daysElap").innerHTML = strDay;
					document.getElementById("timeElap").innerHTML = strHrs;
				}
				else
				{
					let strDay = "Days Passed : " + inDays;
					let strHrs = "Time Passed : " + Math.abs(inHours) + " Hours";
					document.getElementById("daysElap").innerHTML = strDay;
					document.getElementById("timeElap").innerHTML = strHrs;
				}
				console.log(selDate);
				console.log(curDate);
			}