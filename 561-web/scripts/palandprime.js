function findPal()
{
	let str = document.getElementById("arrIn").value;
	let num = str.split(" ");
	let resArr = [];
	let resInd = 0;
	for(let i = 0; i<num.length; i++)
	{
		let temp = num[i];
		let res = 0;
		while(temp != 0)
	{
	let rem = temp % 10;
	temp = Math.floor(temp/10);
	res = (res * 10) + rem;
	}
		if(res == num[i])
		{
			resArr[resInd] = res;
			resInd = resInd+1;
			console.log(res);
		}
	}
	let resStr = "Palindrome Numbers in the Array are : " ;
	for(let i = 0; i < resArr.length; i++)
	{
		resStr = resStr + " " + resArr[i];
		document.getElementById("palresText").innerHTML = resStr;
	}				
}
function findPrime()
{
	let str = document.getElementById("arrIn").value;
	let num = str.split(" ");
	let resArr = [];
	let resInd = 0;
	for(let i = 0; i < num.length; i++)
	{
		let temp = num[i];
		let flag = true;
		for(let j = 2; j < temp; j++)
		{
			if(temp%j == 0)
			{
			flag = false;
			}
		}
		if(flag)
		{
			if (temp != 1)
			{
				resArr[resInd] = temp;
				resInd = resInd+1;
			}
			
		}
	}

	let resStr = "Prime Numbers in the Array are : " ;
	for(let i = 0; i < resArr.length; i++)
	{
		resStr = resStr + " " + resArr[i];
		document.getElementById("primeresText").innerHTML = resStr;
	}
}
function findAll()
{
	findPal();
	findPrime();
}