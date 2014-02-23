<cfoutput>
<!--- ContentBoxEvent --->
#cb.event("cbui_BeforeSideBar")#

<ul class="nav nav-list">

	<h4>Categories</h4>
	<!---
	Display Categories using ContentBox collection template rendering
	the default convention for the template is "category.cfm" you can change it via the quickCategories() 'template' argument.
	--->
	<ul>
		#cb.quickCategories()#		
	</ul>

	<h4>Recent Entries</h4>
	#cb.widget('RecentEntries')#

	<!--- RSS Buttons --->
	<h4>Site Updates</h4>
	<ul>
		<li><a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!"><i class="fa fa-rss"></i></a> <a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!">RSS Feed</a></li>
	</ul>

	<cfif cb.isEntryView()>
	<!--- RSS Entry Comments --->
	<h4>Entry Comments</h4>
		<ul>
			<li><a href="#cb.linkRSS(comments=true,entry=prc.entry)#" title="Subscribe to our Entry's Comment(s) RSS Feed!"><i class="fa fa-rss"></i></a> <a href="#cb.linkRSS(comments=true,entry=prc.entry)#" title="Subscribe to our Entry's Comment(s) RSS Feed!">RSS Feed</a></li>
		</ul>
	</cfif>

	<h4>Archives</h4>
	#cb.widget("Archives")#

	<h4>Entries Search</h4>
	#cb.widget("SearchForm")#

	<!---#cb.widget("Meta",{titleLevel="4"})#--->

</ul>

<!--- ContentBoxEvent --->
#cb.event("cbui_afterSideBar")#
</cfoutput>