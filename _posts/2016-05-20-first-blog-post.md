---
layout: post
title: General Geekery: A (basic) econometric analysis of crime data
date: 2016-05-20 06:34
author: techenomics1
comments: true
categories: [Uncategorized]
---
So I decided to geek out a little bit today and put some of my skills to use.  In my general perusing/consumption of headlines some of my news streams/feeds today had the story:
" Victorville ranked No. 9 on 'California's most dangerous cities' list ".
(http://www.vvdailypress.com/news/20160518/victorville-ranked-no-9-on-californias-most-dangerous-cities-list)

Now this is odd for a couple of reasons, first is that Victorville is getting the headlines on this and not the ones ranked above it, but also in how the analysis was found/gathered.  This also hits close to home, since I am originally from one of the at risk communities listed in the top 25.

Doing a bit more digging and I found the source report from Graham Donath Law Offices
(http://www.gddlaw.com/2016/05/12/cities-california-dangerous/)

Mirror/Google cache here: http://webcache.googleusercontent.com/search?q=cache:3br023lQLMAJ:www.gddlaw.com/2016/05/12/cities-california-dangerous/+&amp;cd=1&amp;hl=en&amp;ct=clnk&amp;gl=us

Beyond the pretty graphics and information that the law firm provides, they have some beautiful tables and data with overall crime rates, and the various contributing factors that they decided to measure.

I decided I would love some more insight/drill down into the data and had to run a simple regression on it, so I fired up Excel and filled out the table, and ran the results.  Using all of the contributing factors that GDD lists as X values and 'Total Crime' as the Y, comes up with the following output:
<table width="488">
<tbody>
<tr>
<td width="225"><strong>Regression Statistics for Total Crime</strong></td>
<td width="91"></td>
<td width="86"></td>
<td width="86"></td>
</tr>
<tr>
<td><strong>No. of obs.</strong></td>
<td><strong>68</strong></td>
<td>SSR</td>
<td>202288314.3</td>
</tr>
<tr>
<td>No. of missing obs.</td>
<td>1048507</td>
<td>TSS</td>
<td>437876718.8</td>
</tr>
<tr>
<td>Mean of Dep Var</td>
<td>6088.098824</td>
<td><strong>R<sup>2</sup></strong></td>
<td><strong>0.538024504</strong></td>
</tr>
<tr>
<td>RMSE</td>
<td>1836.15683</td>
<td>F stat.</td>
<td>9.982431207</td>
</tr>
<tr>
<td>Variable</td>
<td><strong>Estimate</strong></td>
<td><strong>SE</strong></td>
<td><strong>t-stat</strong></td>
</tr>
<tr>
<td><strong>Intercept</strong></td>
<td>-5058.055471</td>
<td>3556.672695</td>
<td>-1.42213127</td>
</tr>
<tr>
<td><strong>Pop. Density</strong></td>
<td>-0.126918937</td>
<td>0.092171999</td>
<td>-1.37697932</td>
</tr>
<tr>
<td><strong>Poverty Rate</strong></td>
<td>289.9089745</td>
<td>66.61207273</td>
<td>4.352198672</td>
</tr>
<tr>
<td><strong>Unemp. Rate</strong></td>
<td>279.546258</td>
<td>168.9453645</td>
<td>1.654654798</td>
</tr>
<tr>
<td><strong>High School Grad %</strong></td>
<td>55.75293253</td>
<td>34.58171674</td>
<td>1.612208351</td>
</tr>
<tr>
<td><strong>Days over 80 degrees (F)</strong></td>
<td>-9.07864458</td>
<td>4.890110635</td>
<td>-1.85653153</td>
</tr>
<tr>
<td><strong>Police Budget Per Capita</strong></td>
<td>10.7479687</td>
<td>3.081524103</td>
<td>3.487874294</td>
</tr>
<tr>
<td><strong>Officers per 100k</strong></td>
<td>-3.405462432</td>
<td>9.460616693</td>
<td>-0.35996199</td>
</tr>
<tr>
<td>Critical T @ 10% = 1.292</td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
I should run bias testing on this, but I'm willing to bet there is multicolinearity between poverty and the unemployment rate, and that there are going to be omitted variables.

Now what's really interesting here is that we would expect a decrease in crime with an increase in police budgets, but that is not the case, and in fact the potential increase in officers may not offset crime rates that occur, and that even if officers are present, they do not seem to have a statistically significant impact on overall crime rates.  Just as, if not more, interesting is how poverty drastically affects the crime rate, and is VERY significant (hence why I included the data from the T-Stat table).

Some other conclusions/recommendations that we can draw from this are that education is not the social panacea that policy makers like to discuss.  We can also see that long term issues of poverty/economics need to be addressed at a communal level, and that social safety nets really do have potentially positive externalities.

While this is a limited and potentially cursory analysis, it should come as no surprise that investing in communities is a good thing, but one of the remaining questions is of who will do the work of investing in at risk communities?
