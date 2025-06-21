build: gen_love
    mkdir -p dist
    mv src.zip dist/ball-moving.love

[working-directory: 'src']
gen_love:
    zip -r src.zip ./*
    mv src.zip ..

clean:
    rm -r dist

run:
    love dist/ball-moving.love
