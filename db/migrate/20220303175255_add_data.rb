class AddData < ActiveRecord::Migration[7.0]
  def change
    words = ["the","be","and","of","a","in","to","have","it","I","that","for","you","he","with","on","do","say","this","they","at","but","we","his","from","that","not","n't","by","she","or","as","what","go","their","can","who","get","if","would","her","all","my","make","about","know","will","as","up","one","time","there","year","so","think","when","which","them","some","me","people","take","out","into","just","see","him","your","come","could","now","than","like","other","how","then","its","our","two","more","these","want","way","look","first","also","new","because","day","more","use","no","man","find","here","thing","give","many","well","only","those","tell","one","very","her","even","back","any","good","woman","through","us","life","child","there","work","down","may","after","should","call","world","over","school","still","try","in","as","last","ask","need","too","feel","three","when","state","never","become","between","high","really","something","most","another","much","family","own","out","leave","put","old","while","mean","on","keep","student","why","let","great","same","big","group","begin","seem","country","help","talk","where","turn","problem","every","start","hand","might","American","show","part","about","against","place","over","such","again","few","case","most","week","company","where","system","each","right","program","hear","so","question","during","work","play","government","run","small","number","off","always","move","like","night","live","Mr","point","believe","hold","today","bring","happen","next","without","before","large","all","million","must","home","under","water","room","write","mother","area","national","money","story","young","fact","month","different","lot","right","study","book","eye","job","word","though","business","issue","side","kind","four","head","far","black","long","both","little","house","yes","after","since","long","provide","service","around","friend","important","father","sit","away","until","power","hour","game","often","yet","line","political","end","among","ever","stand","bad","lose","however","member","pay","law","meet","car","city","almost","include","continue","set","later","community","much","name","five","once","white","least","president","learn","real","change","team","minute","best","several","idea","kid","body","information","nothing","ago","right","lead","social","understand","whether","back","watch","together","follow","around","parent","only","stop","face","anything","create","public","already","speak","others","read","level","allow","add","office","spend","door","health","person","art","sure","such","war","history","party","within","grow","result","open","change","morning","walk","reason","low","win","research","girl","guy","early","food","before","moment","himself","air","teacher","force","offer","enough","both","education","across","although","remember","foot","second","boy","maybe","toward","able","age","off","policy","everything","love","process","music","including","consider","appear","actually","buy","probably","human","wait","serve","market","die","send","expect","home","sense","build","stay","fall","oh","nation","plan","cut","college","interest","death","course","someone","experience","behind","reach","local","kill","six","remain","effect","use","yeah","suggest","class","control","raise","care","perhaps","little","late","hard","field","else","pass","former","sell","major","sometimes","require","along","development","themselves","report","role","better","economic","effort","up","decide","rate","strong","possible","heart","drug","show","leader","light","voice","wife","whole","police","mind","finally","pull","return","free","military","price","report","less","according","decision","explain","son","hope","even","develop","view","relationship","carry","town","road","drive","arm","true","federal","break","better","difference","thank","receive","value","international"]
    for i in 1..500
      body = []
      title = []
      word_count = rand 20..80
      for w in 0 .. word_count
        body.push(words[rand 0..499])
      end
      word_count = rand 2..12
      for w in 0 .. word_count
        title.push(words[rand 0..499])
      end
      a = Article.new(body: body.join(" "), title: title.join(" "))
      a.save()
      comment_count = rand 0..10
      for c in 0 .. comment_count
        body = []
        word_count = rand 1..100
        for w in 0 .. word_count 
          body.push(words[rand 0..499])
        end

        comment = Comment.new(body: body.join(" "), article: a)
        comment.save()
        reactions = rand 0..20
        if reactions < 10
          reactions = 0
        else
          reactions = reactions - 10
        end
        if reactions >= 9
          reactions = rand 1000..30000
        end
        if reactions > 0
          for r in 1 .. reactions
            kind = rand 1..3
            reaction = Reaction.new(kind: kind, comment: comment)
            reaction.save()
          end
        end
      end
    end
  end
end
