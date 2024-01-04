require 'openai'

client = OpenAI::Client.new(
    api_key: "rubbish"
)

prompt = "rubbish"
response = client.completions(
    engine: "text-davinci-002",    
    prompt: prompt,
    max_tokens: 100
    )





# Extract and print the generated story
generated_story = response['choices'][0]['text']
puts generated_story