function bubSort()
	{
		let str = document.getElementById("arrIn").value;
		let nums = str.split(",");
		for(let i = 0;i<nums.length;i++)
		{
			nums[i] = parseInt(nums[i]);
		}
		let temp;
		console.log(nums);
		for (let i = 0; i < nums.length; i++) 
		{
		
			console.log(nums[i])
			for (let j = 0; j < nums.length; j++) 
			{
				console.log(nums[i] + "    " + nums[j]);
				if (nums[i] >= nums[j]) 
				{
					temp = nums[j];
					nums[j] = nums[i];
					nums[i] = temp;
					console.log("inside if "+nums[i] + "    " + nums[j]);
				}
			}
			
		}
		
		let str1 = "Sorted Array is : ";
		for (let i = nums.length-1; i >= 0; i--)
		{
			str1 = str1 + " " + nums[i];
		}
	document.getElementById("sortedText").innerHTML = str1;
}