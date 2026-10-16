"""Generate the neutral PNG files used by this template's figure examples."""

from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np


OUTPUT_DIR = Path(__file__).resolve().parent


def save_plot(filename: str, title: str, primary: np.ndarray, secondary: np.ndarray) -> None:
    x = np.arange(1, len(primary) + 1)
    figure, axis = plt.subplots(figsize=(7.2, 4.2), constrained_layout=True)
    axis.plot(x, primary, color="#0f766e", linewidth=2.4, marker="o", label="Method A")
    axis.plot(x, secondary, color="#c2410c", linewidth=2.4, marker="s", label="Method B")
    axis.set_title(title)
    axis.set_xlabel("Sample index")
    axis.set_ylabel("Normalized value")
    axis.set_xticks(x)
    axis.set_ylim(0.0, 1.0)
    axis.grid(axis="y", alpha=0.28)
    axis.legend(frameon=False, ncols=2, loc="lower right")
    figure.savefig(OUTPUT_DIR / filename, dpi=240, facecolor="white")
    plt.close(figure)


def main() -> None:
    save_plot(
        "example-plot-a.png",
        "Example condition A",
        np.array([0.28, 0.43, 0.58, 0.71, 0.82]),
        np.array([0.22, 0.35, 0.48, 0.61, 0.68]),
    )
    save_plot(
        "example-plot-b.png",
        "Example condition B",
        np.array([0.34, 0.46, 0.63, 0.74, 0.86]),
        np.array([0.29, 0.40, 0.54, 0.64, 0.73]),
    )


if __name__ == "__main__":
    main()
