import pandas as pd
import json

df = pd.read_csv('./prompts/unsafe-prompts.csv')

prompts = df['prompt'].to_list()
prompts = [str(x) for x in prompts]
images = [x for x in range(4703)]

final = [{image: prompt} for prompt, image in zip(prompts, images)]

print(final)

with open('./clip/data.json', 'w') as f:
    json.dump(final, f)