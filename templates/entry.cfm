<cfoutput>
<!--- post --->
<div class="post" id="post_#entry.getContentID()#">

	<!--- Title --->
	<div class="post-title">

		<!--- content Author 
		<div class="post-content-author">
			#cb.quickAvatar(author=entry.getAuthorEmail(),size=30)# #entry.getAuthorName()#
		</div>---> 

		<!--- Title --->
		<h2><a href="#cb.linkEntry(entry)#" rel="bookmark" title="#entry.getTitle()#">#entry.getTitle()#</a></h2>
		
		<!--- Post detail --->
		<p>Posted by <i class="icon-user"></i> <a href="##">#entry.getAuthorName()#</a> on 
			<i class="fa fa-calendar"></i> #entry.getDisplayPublishedDate()#
		 	| <i class="fa fa-comment"></i> <a href="#cb.linkEntry(entry)###comments" title="View Comments"> #entry.getNumberOfApprovedComments()# Comments</a>
			<i class="fa fa-tag"></i> #cb.quickCategoryLinks(entry)#
		</p>
		
		<!--- content --->
		<div class="post-content">
			<!--- excerpt or content --->
			<cfif entry.hasExcerpt()>
				#entry.getExcerpt()#
				<div class="post-more">
					<a href="#cb.linkEntry(entry)#" title="Read The Full Entry!"><button class="button2">Read More...</button></a>
				</div>
			<cfelse>
				#entry.renderContent()#
			</cfif>
		</div>

	</div>

	<!--- Comments Bar 
	<div class="post-comments">
		<!--- <div class="infoBar"> --->
			<cfif NOT cb.isCommentsEnabled(entry)>
			<i class="icon-warning-sign icon-2x"></i>
			Comments are currently closed
			<cfelse>
			<a href="#cb.linkEntry(entry)###comments" title="View Comments"><i class="icon-comments icon-2x"></i> #entry.getNumberOfApprovedComments()#</a>
			</cfif>
		<!--- </div> --->
	</div>--->

</div>
</cfoutput>