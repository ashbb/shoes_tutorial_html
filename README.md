Shoes Tutorial Note
===================
**- For the Shoes App Rookie Creators -**

April 17th, 2010 by ashbb (Satoshi Asakawa), citizen428 (Michael Kohl), kotp (Victor H. Goff III)

**Note: Now under revising with Policeman!**

Table of contents
-----------------
1. [00100 Introduction](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00100_Introduction.mdown)
2. [00200 Download Shoes](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00200_Download_Shoes.mdown)
3. [00300 First step](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00300_First_step.mdown)
4. Birds-eye view (Survey basic features)
	- [00401 Concept](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00401_Concept.mdown)
	- [00402 No.1 para (sample1.rb, sample2.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00402_No.1_para.mdown)
	- [00403 No.2&3 stack and flow (sample3.rb, sample4.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00403_No.2_3_stack_and_flow.mdown)
	- [00404 No.4 button (sample5.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00404_No.4_button.mdown)
	- [00405 No.5 image (sample6.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00405_No.5_image.mdown)
	- [00406 No.6 edit\_line (sample7.rb, sample7-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00406_No.6_edit__line.mdown)
	- [00407 No.7 link (sample8.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00407_No.7_link.mdown)
	- [00408 No.8 background (sample9.rb, sample10.rb, sample57.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00408_No.8_background.mdown)
	- [00409 No.9 Shoes.url (sample11.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00409_No.9_Shoes.url.mdown)
	- [00410 No.10 clear (sample12.rb, sample13.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00410_No.10_clear.mdown)
5. Tips for creating our original Shoes apps
	- [00501 Open Shoes built-in manual and Shoes console window](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00501_Open_Shoes_built-in_manual_and_Shoes_console_window.mdown)
	- [00502 Output messages on the Shoes console window (sample15.rb, sample15-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00502_Output_messages_on_the_Shoes_console_window.mdown)
	- [00503 shoes --help](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00503_shoes_--help.mdown)
	- [00504 App object and coding style (sample16.rb, sample17.rb, sample18.rb, sample47.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00504_App_object_and_coding_style.mdown)
	- [00505 Built-in Constants and methods](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00505_Built-in_Constants_and_methods.mdown)
	- [00506 Scope: A tip of using the YAML file (sample19.rb, sample19-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00506_Scope__A_tip_of_using_the_YAML_file.mdown)
	- [00507 keypress, mouse and clipboard (sample20.rb, sample21.rb, sample65.rb, sample20-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00507_keypress,_mouse_and_clipboard.mdown)
	- [00508 The Widget class (sample22.rb, sample49.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00508_The_Widget_class.mdown)
	- [00509 shape (sample23.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00509_shape.mdown)
	- [00510 mask (sample24.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00510_mask.mdown)
	- [00511 Drawing directly on to images (sample25.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00511_Drawing_directly_on_to_images.mdown)
	- [00512 Style (sample26.rb, sample56.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00512_Style.mdown)
	- [00513 Shoes.setup (sample27.rb, sample50.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00513_Shoes.setup.mdown)
	- [00514 Downloader (sample28.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00514_Downloader.mdown)
	- [00515 Assign Shoes URL dynamically (sample29.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00515_Assign_Shoes_URL_dynamically.mdown)
	- [00516 Classes List and Colors List (sample30.rb, sample30-1.rb, sample30-2.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00516_Classes_List_and_Colors_List.mdown)
	- [00517 start, stop and restart (sample31.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00517_start,_stop_and_restart.mdown)
	- [00518 Combination of image objects show/hide and mouse hover/leave (sample32.rb, sample33.rb, sample34.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00518_Combination_of_image_objects_show_hide_and_mouse_hover_leave.mdown)
	- [00519 arc and cap (sample35.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00519_arc_and_cap.mdown)
	- [00520 widget with block (sample36.rb, sample36-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00520_widget_with_block.mdown)
	- [00521 text message slide-in (sample37.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00521_text_message_slide-in.mdown)
	- [00522 #! shoes (sample38.rb, sample38-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00522____shoes.mdown)
	- [00523 loading widgets from other files? (sample39.rb, sample39-creature.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00523_loading_widgets_from_other_files_.mdown)
	- [00524 optional arguments (sample40.rb, sample40-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00524_optional_arguments.mdown)
	- [00525 slot with scrollbar (sample41.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00525_slot_with_scrollbar.mdown)
	- [00526 The :state style (sample42.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00526_The__state_style.mdown)
	- [00527 Shoes::FONTS and External Fonts (sample43.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00527_Shoes__FONTS_and_External_Fonts.mdown)
	- [00528 Shoes Tutorial Note Launcher (sample44.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00528_Shoes_Tutorial_Note_Launcher.mdown)
	- [00529 UTF-8 (sample45.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00529_UTF-8.mdown)
	- [00530 Open a new app window (sample46.rb, sample48.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00530_Open_a_new_app_window.mdown)
	- [00531 Open the Shoes console window from your app (sample51.rb, sample55.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00531_Open_the_Shoes_console_window_from_your_app.mdown)
	- [00532 Customize Shoes Class (sample53.rb, sample53-1.rb, sample53-2.rb, sample53-3.rb, sample53-4.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00532_Customize_Shoes_Class.mdown)
	- [00533 Image Effects with blur method (sample54.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00533_Image_Effects_with_blur_method.mdown)
	- [00534 Video playback (sample59.rb, sample59-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00534_Video_playback.mdown)
	- [00535 Scope: local variable and instance variable (sample60.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00535_Scope__local_variable_and_instance_variable.mdown)
	- [00536 edit_line with block (sample63.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00536_edit_line_with_block.mdown)
	- [00537 One way of layer manipulation (sample64.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00537_One_way_of_layer_manipulation.mdown)
	- [00538 Show and hide the slots (sample66.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00538_Show_and_hide_the_slots.mdown)
	- [00539 class definition outside of Shoes.app block (sample69.rb, sample69-1.rb, sample69-2.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00539_class_definition_outside_of_Shoes.app_block.mdown)
	- [00540 flexible time interval (sample72.rb, sample72-1.rb, sample72-2.rb, sample72-3.rb, sample72-4.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00540_flexible_time_interval.mdown)
	- [00541 Shoes comes with sqlite3/ruby (sample73.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00541_Shoes_comes_with_sqlite3_ruby.mdown)
	- [00542 zoom method with a little bit of metaprogramming (sample74.rb, zoom.rb, zoom-1.rb, sample74-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00542_zoom_method_with_a_little_bit_of_metaprogramming.mdown)
	- [00543 UTF-8 again (sample75-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00543_UTF-8_again.mdown)
	- [00544 recognize the enter-key pressed in the edit_line area (sample76.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00544_recognize_the_enter-key_pressed_in_the_edit_line_area.mdown)
	- [00545 dash (sample77.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00545_dash.mdown)
	- [00546 XMLRPC4R (sample78.rb, sample78-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00546_XMLRPC4R.mdown)
6. Hot Topics in the Shoes ML and Shoooes.net
	- [00601 External Fonts](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00601_External_Fonts.mdown)
	- [00602 Locking edit\_box](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00602_Locking_edit__box.mdown)
	- [00603 Styling Master List](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00603_Styling_Master_List.mdown)
	- [00604 Trying to ease the RubyGems pain](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00604_Trying_to_ease_the_RubyGems_pain.mdown)
	- [00605 Shoes snapshot](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00605_Shoes_snapshot.mdown)
	- [00606 shoes gem alternate repo's](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00606_shoes_gem_alternate_repo's.mdown)
	- [00607 http post in shoes](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00607_http_post_in_shoes.mdown)
	- [00608 Building Shoes with Windows DDK](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00608_Building_Shoes_with_Windows_DDK.mdown)
	- [00609 Write a 17-line fake chat client using Shoes (sample70.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00609_Write_a_17-line_fake_chat_client_using_Shoes.mdown)
	- [00610 red equal blue??? (sample71.rb, sample71-1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00610_red_equal_blue___.mdown)
	- [00611 The value of top and left](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00611_The_value_of_top_and_left.mdown)
	- [00612 Dynamically changing the size/title of the shoes main window](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00612_Dynamically_changing_the_size_title_of_the_shoes_main_window.mdown)
	- [00613 new packaging UI added](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00613_new_packaging_UI_added.mdown)
7. Assignment
	- [00701 Assignment 1 twitter client (reader)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00701_Assignment_1_twitter_client__reader_.mdown)
	- [00702 Assignment 2 footracer (mini-footracer-1st.rb, mini-footracer-2nd.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00702_Assignment_2_footracer.mdown)
	- [00703 Assignment 3 Mini Adventure Game GUI Part (sample52.rb, sample52-render.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00703_Assignment_3_Mini_Adventure_Game_GUI_Part.mdown)
	- [00704 Assignment 4 Pong in Shoes (sample58.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00704_Assignment_4_Pong_in_Shoes.mdown)
	- [00705 Assignment 5 Riddles in Shoes (sample67.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00705_Assignment_5_Riddles_in_Shoes.mdown)
	- [00706 Assignment 6 Dog Hunts Sheep Game (sample68.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00706_Assignment_6_Dog_Hunts_Sheep_Game.mdown)
8. [00800 Relevant web sites (Links) (sample62.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00800_Relevant_web_sites__Links_.mdown)
9. [00900 Appendix](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/00900_Appendix.mdown)
10. [01000 Acknowledgment](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01000_Acknowledgment.mdown)
11. Fancy Gallery
	- [01110 Fancy Gallery 1-5 (gallery1.rb, gallery1-1.rb, gallery2.rb, gallery2-1.rb, gallery3.rb, gallery4.rb, gallery4-1.rb, gallery5.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01110_Fancy_Gallery_1-5.mdown)
	- [01120 Fancy Gallery 6-10 (gallery6.rb, gallery7.rb, gallery8.rb, gallery9.rb, gallery10.rb, gallery10-rules.rb, gallery10-image.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01120_Fancy_Gallery_6-10.mdown)
	- [01130 Fancy Gallery 11-15 (gallery11.rb, gallery12.rb, gallery12-flickr.rb, gallery13.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01130_Fancy_Gallery_11-15.mdown)
12. Built-in Samples

	- [01201 simple-accordion (simple-accordion.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01201_simple-accordion.mdown)
	- [01202 simple-calc (simple-calc.rb, sample61.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01202_simple-calc.mdown)
	- [01203 simple-menu (simple-menu-r1.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01203_simple-menu.mdown)
13. [01300 Trivia (sample91.rb, sample92.rb, sample93.rb)](http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/01300_Trivia.mdown)

Change log:
-----------
Look at [changelog.mdown](http://github.com/ashbb/shoes_tutorial_html/blob/master/changelog.mdown).

To do list:
-----------
+ Add search function.... done!
+ Improve mkpdf.rb to form more beautifully.
+ Improve the browser feature to resizable.
+ Improve mkbightml.rb for creating PDF file.

Let's enjoy Ruby and Shoes programming!!
----------------------------------------
:-D

ashbb


NOTE
----

- [Shoes Tutorial Note on Heroku](http://shoes-tutorial-note.heroku.com/), simple search (beta) is available. The contents are the same on the GitHub repo.
- [Shoes Tutorial Note on GitHub](http://github.com/ashbb/shoes_tutorial_html/tree/master)
- PDF file is [here](http://github.com/ashbb/shoes_tutorial/tree). Although it's not following the latest revision. :-P
