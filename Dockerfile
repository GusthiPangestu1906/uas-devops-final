# Gunakan image python yang ringan
FROM python:3.9-slim

# Set folder kerja
WORKDIR /app

# Buat file aplikasi sederhana
# Ganti pesan di bawah ini sesuka hati untuk membuktikan update nanti
RUN echo 'from flask import Flask\n\
app = Flask(__name__)\n\
\n\
@app.route("/")\n\
def hello():\n\
    return "<h1>Halo! Ini Aplikasi UAS DevOps milik Gusthi 🚀</h1>"\n\
\n\
if __name__ == "__main__":\n\
    app.run(host="0.0.0.0", port=80)' > app.py

# Install Flask
RUN pip install flask

# Buka port 80
EXPOSE 80

# Jalankan aplikasi
CMD ["python", "app.py"]