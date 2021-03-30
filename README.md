# census-tidying
Tidying and matching some census data.

Copy / Pasted from the request email:

"Following up on our Slack conversation earlier in the week, we do have a request for some help matching and cleaning a couple of large Census Current Population Survey (CPS) files. These files seem to be the best and in many cases only way to get state-specific income data with enough demographics and industry specifics to do some work on racial impacts of paid family and medical leave and then a more in-depth analysis of racial and ethnic inequity in the state's labor market.

I believe we should use the 2019 CPS data due to the weirdness of 2020 but I'm open to suggestions. 

There are two files we'll need, the household file and the person file. All the data we need are in the person file, but it does not have the state variable so we can't pull out just the Oklahoma records. 

However, according to the codebook (see p. 6A-1, which would be page 1 if you aren't a bureaucrat), the household ID number in the household file is the same as the first 20 characters of the person ID number in the person file. 

So, I'm hoping you can use that match to put the state ID (GESTFIPS), which is only in the household file, into the records in the person file. Then once we know all the Oklahomans in the person file (there can be multiple people per household ID number), can you delete all the non-Okies so we can have a manageable file (probably 3,000 or so records) to do our analysis?

I tried this in Excel and the matching wasn't complete and was really tedious. I hope having actual data analysts on the job makes a difference! 

As far as timeline, anytime in the next 3-4 weeks would be incredibly helpful. Appreciate your willingness to give it a shot. Feel free to ask any questions and make suggestions."
