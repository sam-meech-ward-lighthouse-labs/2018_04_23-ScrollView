# Scroll Views

* What?
  - scrollable view / a view that scrolls
* Why?
  - use a scroll view when the content is larger than the screen size.
  - images
  - text
  - web pages
  - long lists of data

## Panning & Zooming

![Imgur](http://i.imgur.com/6HoxHTc.png)

- Panning is when you use your finger to scroll around the content to see different parts of the content.
- Zooming allows you to zoom in and out of content
- Examples would be large images, or web pages, or a bunch of other things.

- A `UIScrollView` has a property called `contentSize`. The content size is the size of the content within the scroll view. If the content size is larger than the scroll view size, the scroll view will allow scrolling in order to be able to see the content. 
- A scrollview's content size defaults to 0,0

- To zoom, you need to do two things
  - set the min and max zoom scale.
  - we need to specify the view that transforms (resizes) when zooming happens.

- We can put multiple views inside a scroll view, but we can only zoom a single view. So if you have multiple images that you want to be able to zoom, you will have to put them all inside another view and zoom that container view.

## Paging

![Imgur](http://i.imgur.com/DgdVqB4.png)

- Instead of scrolling around the same content, as you would with panning, you can **page** through different content. 

- Steps for paging
  - Add a scroll view
  - enable paging on that scroll view. 
  - Add the content to the scroll view
  - set the content size

- Paging is really just panning with paging enabled. We should setup our content a little differently to look nice though.


## ScrollViews and Auto Layout

- We can use constraints, visual format language, or stack views to constrain items within a scrollview.

## Exam
