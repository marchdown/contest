def look_and_say(data='1', maxlen=5):
  #TODO populate result list with the look and say numbers
  ''' data:   starting number set
      maxlen: max sequence length
  '''
  res = []
  while len(data)<=maxlen:
  	res.append(data)
  	data = make_next_look_and_say_number(data)
  return res
      

def make_next_look_and_say_number(data):
    assert(isinstance(data,str))
    s = ''	
    while data:
  # outer loop, read string from the last time, subseq by subseq
      d = data[0]
      acc = 1
      data = data[1:]
      while data and data[0] == d: # inner loop, read subseq of chars
          acc += 1
          data = data[1:]
      s = s + str(acc) + str(d)     # after exiting inner loop record results
    return s
