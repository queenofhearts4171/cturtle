for((i=0;i<=100;++i)) do
   ./p $1 $i $2
   mv output.bmp ./outputs/$i.bmp
done

cd ./outputs
convert -delay 80 -loop 0 *.bmp myimage.gif
rm *.bmp
