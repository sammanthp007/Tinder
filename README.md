# Tinder
Due Date: March 30th at 11:59pm

## What is expected

![Image](http://i.imgur.com/cwbdkVe.gif)

## What I have
![Image](https://github.com/sammanthp007/Tinder/blob/master/walkthrough.gif)

## Resources
- [Vimeo Link for View Controller
  Transition](https://vimeo.com/158866732/4d549c4e91)
- [Vimeo for Custom Views](https://vimeo.com/158866707/0c61ceee88)

## Assets
You can download the Tinder assets
[here](https://www.dropbox.com/s/0nkv0ncokixd1hr/Tinder%20Assets.zip?dl=0).

## Milestones

1. Setup:
    - Create a new project (disable Auto Layout).
      [Guide](https://courses.codepath.com/courses/ios_university/pages/new_project)
    - Add the image assets above.
      [Guide](https://github.com/codepath/ios_guides/wiki/Adding-Image-Assets)

2. Draggable Card
    - Create a view controller called CardsViewController with image views for
      the nav bar and action buttons.
    - Add a UIImageView with a UIPanGestureRecognizer. Set it to aspect fill
      and clip subviews. Make sure to check the "User Interaction Enabled"
      check box or the gesture recognizer won't work.
    - Make the card draggable Using [Gesture
      Recognizers](https://github.com/codepath/ios_guides/wiki/Using-Gesture-Recognizers)
    - Hint: create a instance variable at the top of the file for the initial
      center.
        - `var cardInitialCenter: CGPoint!`

3. Rotation on Drag
    - For positive horizontal translations, rotate the image clockwise. For
      negative horizontal translations, rotate the image counterclockwise.
      [Using View
      Transforms](https://github.com/codepath/ios_guides/wiki/Using-View-Transforms)
    - If the user starts dragging in the bottom half of the card, reverse the
      above rotation.

4. Final Card Animation
    - If the x translation is greater than 50, animate it off screen to the
      right. If the x translation is less than 50, animate it off screen to the
      left. [Animating View
      Properties](https://github.com/codepath/ios_guides/wiki/Animating-View-Properties)
      Otherwise, restore the original center and transform.
    - Hint: to restore a transform, `cardView.transform = CGAffineTransformIdentity`
    - At this point, your app should look something like this:

![Image](http://i.imgur.com/TTUgiVX.gif)

5. Basic Modal Transition
    - Create another view controller called ProfileViewController.
    - Add an image view.
    - Add a property for a UIImage.
    - Create a modal segue from CardsViewController to ProfileViewController.
    - On tap, segue to the ProfileViewController, passing in the image of the
      card view.
    - Guide: [Passing Data in
      Segues](https://courses.codepath.com/courses/ios_university/pages/using_modal_transitions#heading-passing-data)
    - At this point, your app should look something like this:

![Image](http://i.imgur.com/ISGBX50.gif)

6. Bonus: Custom Modal Transition
    - Create a [custom modal
      transition](http://guides.codepath.com/ios/Creating-a-Custom-Modal-Transition).
      Download the [custom transition
      class](https://www.dropbox.com/s/9shewnjl09kzett/Transition%20Files.zip?dl=0)
      files for reference. Create a new class called ImageTransition that is a
      subclass of BaseTransition.
    - In order to move the image, you don't actually move the original
      UIImageView. Instead, you create a temporary UIImageView, add it to the
      containerView, and create a view animation. Upon completion of the
      animation, remove the temporary UIImageView from the containerView.
    - At this point, your app should look something like this:

![Images](http://i.imgur.com/6cc8HOs.gif)
