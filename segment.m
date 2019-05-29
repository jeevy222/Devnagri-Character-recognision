clc,clear;
opengl('save', 'software');
I = imread('C:\Users\Jeevtesh Singh\Desktop\working\test_data_ka.jpg');
Ib = im2bw(I);
Ib=~Ib;
a=0;
value=1;
count=0;
dist=0;
ch=1;
fr=1;
fc=1;
%feature(24)=0;
%imshow(I2);
%figure;
total_letters= regionprops(Ib);
for index=1:length(total_letters)
    
   if total_letters(index).Area > 500 && total_letters(index).BoundingBox(3)*total_letters(index).BoundingBox(4) < 20000
    
       x = ceil(total_letters(index).BoundingBox(1));
    y= ceil(total_letters(index).BoundingBox(2));
    widthX = floor(total_letters(index).BoundingBox(3)-1);
    widthY = floor(total_letters(index).BoundingBox(4)-1);
    single_char(index) = {Ib(y:y+widthY,x:x+widthX,:)}; 
   % imwrite(single_char(index),'images_segment');
    %single_char(index)=~single_char(index);
   % normImage = mat2gray(single_char{index})
    b=imresize(single_char{index},[42 32]);
    h = ones(3,3)/9;
I2 = imfilter(b,h);
    tol = 15;
[~,ang] = imgradient(b);
out = (ang >= 135 - tol & ang <= 135 + tol) | (ang >= -45 - tol & ang <= -45 + tol);
[~,ang] = imgradient(b);
out1 = (ang >= 45 - tol & ang <= 45 + tol) | (ang >= -135 - tol & ang <= -135 + tol);
%out_filter = bwareaopen(out, 50);
%imshow(out_filter);
%out_filter = bwareaopen(out, 50);
final_image=b+out+out1;%final image to work on
%final_image=im2bw(c);
    [x,y] = size(final_image);
row=x/6;
col=y/4;
%figure, imshow(I1);
feature(1,24)=0;
for i=1:7
      
   for j=1:8
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end

if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
  
ch=ch+1;
dist=0;
count=0;
for i=8:14
    
   for j=1:8
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=15:21
     
   for j=1:8
  
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=22:28
      
   for j=1:8
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=29:35
      
   for j=1:8
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=36:42
      
   for j=1:8
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;

for i=1:7
      
   for j=9:16
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=8:14
     
   for j=9:16
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=15:21
      
   for j=9:16
        
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=22:28
     
   for j=9:16
     
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=29:35
     
   for j=9:16
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=36:42
      
   for j=9:16
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end




if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=1:7
    
   for j=17:24
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=8:14
      
   for j=17:24
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=15:21
      
   for j=17:24
     
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=22:28
     
   for j=17:24
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=29:35
     
   for j=17:24
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=36:42
     
   for j=17:24
     
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end



if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=1:7
     
   for j=25:32
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=8:14
     
   for j=25:32
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=15:21
   
   for j=25:32
    
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=22:28
    
   for j=25:32
      
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=29:35
     
   for j=25:32
   
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end
if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
for i=36:42
     
   for j=25:32
       
       if (final_image(i,j)==1)
           count=count+1;
           a=sqrt(i*i+j*j);
           dist=dist+a;
       end
   end
 
end

if count==0 
    feature(ch)=0;
else

feature(ch) = dist/count;
end
ch=ch+1;
dist=0;
count=0;
figure;
imshow(final_image);
   end

end
feature=feature/50.4634;
%t=feature;
%t=uitable;