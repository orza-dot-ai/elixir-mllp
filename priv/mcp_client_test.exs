IO.inspect("hello")
{:ok, s1} = MLLP.Client.start_link({127,0,0,1}, 4090)
res= MLLP.Client.send(s1, HL7.Examples.wikipedia_sample_hl7() |> HL7.Message.new())
IO.inspect(res)
