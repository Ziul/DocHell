# IEEE Article Generator

This project allows the generation of reports or articles in IEEE format using markdown files as input.

## Contents

- [Description](#description)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contribution](#contribution)
- [License](#license)

## Description

This project provides a simple way to convert markdown files into documents formatted according to IEEE standards. It uses a `Makefile` to automate the conversion process.

## Prerequisites

- [Pandoc](https://pandoc.org/installing.html): Pandoc is a universal document converter.
- [LaTeX](https://www.latex-project.org/get/): Required to render the document in PDF format according to IEEE standards.

## Installation

1. Clone the repository:
    ```bash
    git clone <REPOSITORY_URL>
    cd <REPOSITORY_NAME>
    make install
    ```

2. Make sure you have Pandoc and LaTeX installed on your system.

## Usage

To generate an IEEE-formatted article from a markdown file, follow these steps:

1. Place your markdown file in the root of the project or modify the path in the `Makefile`.

2. Run the make command:
    ```bash
    make
    ```

3. The generated PDF document will be saved in the `output` folder with the name `article.pdf`.

### Example

To generate the PDF from the `main.md` file, run:
```bash
make
```

## Project Structure

```plaintext
.
├── Makefile        # File to automate document generation
├── main.md         # Input markdown file
└── README.md       # Project documentation
```

## Contribution

Contributions are welcome! To contribute, follow these steps:

1. Fork the repository.
2. Create a branch for your feature or bugfix:
    ```bash
    git checkout -b my-feature
    ```
3. Commit your changes:
    ```bash
    git commit -m 'Add my feature'
    ```
4. Push to the original branch:
    ```bash
    git push origin my-feature
    ```
5. Open a Pull Request.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for more details.
