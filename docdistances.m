% WRITE YOU CODE HERE
text1 = textread('RedRidingHood.txt','%s');
text2 = textread('PrincessPea.txt','%s');
text3 = textread('Cinderella.txt','%s');
text4 = textread('CAFA1.txt','%s');
text5 = textread('CAFA2.txt','%s');
text6 = textread('CAFA3.txt','%s');

words_collection = [text1; text2; text3; text4; text5; text6]; % total collection of words from 6 documents
[corpus,~, ~] = unique(words_collection); % unique words from collection
num_docs = 6; %number of ductoments
t_freq = zeros(num_docs,size(corpus,1)); %pre-allocating for speed
for j = 1:num_docs
    for i = 1:size(corpus,1)
        t_freq(j,i) = sum(strcmp(corpus{i},eval(sprintf('text%d', j))));
    end
end

t_freq_docs = sum(t_freq(:,1:end) > 0); % term t's frequency in each document
tf_idf = t_freq(1:end,:) .* log10(num_docs ./ t_freq_docs);
cos_dist = zeros(size(tf_idf,1),size(tf_idf,1)); % pre-allocating for speed

for i= 1:size(tf_idf,1)
    for j = 1:size(tf_idf,1)
        cos_dist(i,j) = 1 - sum(tf_idf(i,:).*tf_idf(j,:))/(norm(tf_idf(i,:))*norm(tf_idf(j,:))); %cosine distance
    end
end

imagesc(cos_dist);
colormap(gray);
colorbar;
title('Cosine Distance')
xticklabels(["RHH";"PPea";"Cinde";"CAFA1";"CAFA2";"CAFA3"]); % using double quotation for simplicity
yticklabels(["RHH";"PPea";"Cinde";"CAFA1";"CAFA2";"CAFA3"]);





