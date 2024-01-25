# 86e37e2173da469d88e8084f43efa839
import assemblyai as aai

aai.settings.api_key = "86e37e2173da469d88e8084f43efa839"

audiourl = "audio.mp3"

config = aai.TranscriptionConfig(language_code="hi")

transcriber = aai.Transcriber(config=config)

transcript = transcriber.transcribe(audiourl)

with open("output.txt", "w", encoding="utf-8") as f:
    f.write(transcript.text)
