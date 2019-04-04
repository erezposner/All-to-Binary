function img = Bin2Png(filePath)
file=fopen(filePath);
a=fread(file);
c=a';
b = reshape(a,2,[])';
b = b(:,1)+b(:,2)*2^8;
d = reshape(b(3:end),b(1),b(2));
img = d';
fclose(file);
