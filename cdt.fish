function cdt
  set tree_path (treectl cd $argv)
  
  if test $status -eq 0
    cd $tree_path
  end
end
