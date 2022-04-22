function cdt
  set tree_path (treectl find-path $argv)
  
  if test $status -eq 0
    cd $tree_path
  end
end
