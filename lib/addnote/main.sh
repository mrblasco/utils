#!/bin/bash
update_notes () {
  cat $notes_dir/* > /tmp/NOTES.txt
  rm $notes_dir/*
  cp  /tmp/NOTES.txt $notes_dir/
}

if [ $view_notes == "yes" ]; then
  update_notes
  cat $notes_dir/* > $source_dir/CONTENT.txt
  source $home_dir/lib/addnote/make_website.sh $output_dir $source_dir  
  open index.html
  exit 0
fi

if [ $edit_notes == "yes" ]; then
  update_notes
  edit $notes_dir/allnotes.txt
  exit 0
fi

vim $notes_dir/$(date +%V).txt

