function magify(words){
  let hash = {};
  words.forEach(word => {
    hash[word] = true;
  });
  console.log(hash["library"]);
}

magify(["apple", "beets", "eggs", "sauce", "gimlet", "hamster"]);
