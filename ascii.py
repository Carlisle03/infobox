

import typer

app = typer.Typer()


@app.command()
def bin():
    ascii = [
        "0000101111101010101011",
        "0111010101010001110101",
        "0111010101010101010101",
        "0110000000111001011111"
    ]
    
    for line in ascii:
        print(line)

@app.command()
def txt():
    ascii = [
        "_________________",
        "| --------  --  |",
        "| --- -- ---- - |",
        "| -- ------ --- |",
        "| ---------- -- |",
        "|---------------|"
    ]
    for line in ascii:
        print(line)

@app.command()
def py():
    ascii = [
        "       ___________        ",
        "    __|__•__     |        ",
        "   |             |----|   ",
        "   |             |    |   ",
        "   |___|---------|   _|   ",
        "       |     _______|     ",
        "       |         •  |     ",
        "       -------------|     ",
    ]
    for line in ascii:
            print(line)

@app.command()
def c():
    ascii = [
        "       ##########          ",
        "   ############            ",
        "  ##                       ",
        "  #                        ",
        "  #                        ",
        "  ##                       ",
        "   ############            ",
        "     ###########           ",
    ]
    for line in ascii:
        print(line)
        
if __name__ == "__main__":
    app()