#DFP Support

## Powerlinks Support for DFP Ad Servers

### Powerlinks ad tags currently come in three varieties:

***1) Fixed size tags such as a 300x250 or a 728x90***

Typically these can support both native and banner demand, though this is configurable on a per tag basis. These tags build a standard sized ad inside a friendly iFrame of our own construction. These tags are self-styled, with all of the styling logic housed within our iFrame.

***2) Responsive tags that responds to the width of its parent container***

These tags build raw HTML on the page. They do not construct a friendly iFrame. These tags are self-styled, with all of the styling logic housed within our HTML.

***3) Custom markup tags***

These tags serve HTML markup that is customized to mimic the host page’s markup. These tags build raw HTML on the page. They do not construct a friendly iFrame. These tags typically rely on the host page to style the ad, and thus must reside on the host page in the correct location within the page’s markup in order to render correctly.

### When serving PowerLinks tags through DFP, there are a few considerations.

***1) Safe Frames***

There is an option in DFP to serve third party tags behind ‘Safe Frames’. We discourage this, as it serves our tag into an unfriendly iFrame. This hinders our, and our buyers’, ability to view the referring URL of the page in many cases. If Safe Frames must be used, the only tag option is #1, where we serve a fixed size tag such as 300x250. A responsive or custom markup tag can not be served into a Safe Frame.


***2) 1x1 vs Larger size***

If serving a fixed size Powerlinks tag, such as a 300x250, then utilizing a 300x250 DFP tag is preferred. PowerLinks does not need to break out of the 300x250 iframe to serve directly to the page. We are still able to, but there is no need. If this is the case, then the custom instructions below do not apply.

However, for all other cases, including responsive tags and custom markup tags, it may be preferable to serve behind a 1x1 DFP tag. This is because we will need ‘break out’ of the DFP tag in order to sit directly on the host page. This is because for responsive tags, we need to respond to the width of the page’s column, and the friendly iFrame that houses our tag cannot automatically respond to our tag. Custom markup tags will not render correctly, because they will not inherit the requisite styling from the host page.

When we break out of the friendly iFrame, we will leave behind an empty space where the DFP tag is. If we leave behind a 1x1 empty space, that likely isn’t a problem.

If however we are served behind a 300x250, and then break out to create a responsive tag, we will leave behind a 300x250 blank space on the page.

We are capable of collapsing the DFP tag, and we do by default, however this can result in a blank space that shows for some period of time, and then collapses. This may not be a desired behavior, as the blank space may be visible to the user for some period of time.

### Steps to create a DFP tag to serve a Powerlinks responsive or custom markup tag:
This also applies to standard fixed size tags IF we are being served behind a 1x1 DFP tag.


***1:*** Create an Ad Unit in the Inventory section.
This ideally should be a 1x1.

***2:*** Create a line item and target it to the Inventory created in step 1.

***3:*** Create a third party creative and add it to the line item from step 2.

&nbsp;&nbsp;&nbsp; ***3a:*** Make sure that the 'Serve into a SafeFrame' option is unchecked.

&nbsp;&nbsp;&nbsp; ***3b:*** Insert our tag into the Code Snippet field.

&nbsp;&nbsp;&nbsp; ***3c:*** Our tag will include the following: `eid=%%PATTERN:elementid%%` This must remain intact. The `%%PATTERN:elementid%%` is something that DFP will recognize.

***4:*** Go to the Generate tags link. Include the inventory in question. Click 'generate tags'

***5:*** Leave tag type as Google Publisher Tag

***6:*** Leave settings in Step 2 as is

***7:*** Grab tag results from Step 3. The following step is very important. Without this step, none of this will work:

***8:*** The 'Document Header' section will contain code similar to this:

`
<script async='async' src='https://www.googletagservices.com/tag/js/gpt.js'></script>
`

`
<script>
  var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];
</script>
`

`
<script>
  googletag.cmd.push(function() {
    googletag.defineSlot('/26566907/1x1test', [1, 1], 'div-gpt-ad-1473712237579-0').addService(googletag.pubads());
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });
</script>
`

In the second part, there is this line:

`googletag.defineSlot('/26566907/1x1test', [1, 1], 'div-gpt-ad-1473712237579-0').addService(googletag.pubads());`

You must edit that snippet. You will take the bit of text that starts with 'div-gpt-ad...', and you will do the following:

`
googletag.defineSlot('/26566907/1x1test', [1, 1], 'div-gpt-ad-1473712237579-0').addService(googletag.pubads()).setTargeting('elementid','div-gpt-ad-1473712237579-0');
`

So on that line, BEFORE the semi-colon, you will add:

`setTargeting('elementid','div-gpt-ad-1473712237579-0')`

The value div-gpt-ad-1473712237579-0 must be the same as the value in the original unedited line. This is critical.

The ‘Document Body’ section can remain as is.

When the tag is implemented on the site, and the PowerLinks tag is served, we will use the element ID value that is passed to us to break out of the DFP friendly iframe to sit on the page. We will then collapse the DFP tag that we leave behind.

A general note:

When grabbing the tag from the Powerlinks Dashboard, be sure to select the ‘DFP’ version. This will include macros that DFP can recognize, including a cachebuster, referring URL, and the custom ‘elementid’ macro required for breaking out of the DFP friendly iFrame.
