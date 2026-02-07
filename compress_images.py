import os
from PIL import Image

def compress_images(input_dir, output_dir, quality=85):
    """
    Compresses images in the input directory and saves them to the output directory.
    
    Args:
        input_dir (str): Path to the directory containing images to compress.
        output_dir (str): Path to the directory where compressed images will be saved.
        quality (int): Compression quality (1-100). Higher is better quality but larger size.
    """
    
    # Supported image extensions
    valid_extensions = {'.jpg', '.jpeg', '.png', '.webp'}
    
    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    # Walk through input directory
    for root, dirs, files in os.walk(input_dir):
        # Skip the output directory to avoid infinite loops if it's inside input_dir
        if os.path.abspath(output_dir) in os.path.abspath(root):
            continue
            
        for file in files:
            file_path = os.path.join(root, file)
            file_ext = os.path.splitext(file)[1].lower()
            
            if file_ext in valid_extensions:
                try:
                    # Open image
                    with Image.open(file_path) as img:
                        # Determine relative path to maintain structure if needed
                        # For this task we are just flattening to output_dir based on "Keep optimized images in same folder or new /assets/optimized directory"
                        # But simpler to just save to output_dir directly as requested.
                        
                        output_path = os.path.join(output_dir, file)
                        
                        # Resize if too large (optional, but good for "optimization")
                        # Let's cap max dimension at 1920px for mobile usage
                        max_dimension = 1920
                        if max(img.size) > max_dimension:
                            img.thumbnail((max_dimension, max_dimension), Image.Resampling.LANCZOS)
                        
                        # Save compressed image
                        if file_ext in {'.jpg', '.jpeg'}:
                            img.save(output_path, 'JPEG', quality=quality, optimize=True)
                        elif file_ext == '.png':
                            # PNG is lossless, but we can optimize it
                            # For significant size reduction we might convert to JPEG if transparency isn't needed,
                            # but let's stick to optimizing PNGs.
                            # PngImagePlugin has an 'optimize' flag.
                            img.save(output_path, 'PNG', optimize=True)
                        elif file_ext == '.webp':
                            img.save(output_path, 'WEBP', quality=quality)
                            
                        print(f"Compressed: {file}")
                        
                        # Calculate savings
                        original_size = os.path.getsize(file_path)
                        compressed_size = os.path.getsize(output_path)
                        savings = (original_size - compressed_size) / original_size * 100
                        print(f"  Saved: {savings:.2f}% ({original_size/1024:.1f}KB -> {compressed_size/1024:.1f}KB)")
                        
                except Exception as e:
                    print(f"Error processing {file}: {e}")

if __name__ == "__main__":
    # Define paths
    base_dir = os.getcwd()
    assets_dir = os.path.join(base_dir, "assets")
    output_dir = os.path.join(assets_dir, "optimized")
    
    print(f"Scanning for images in: {assets_dir}")
    print(f"Saving optimized images to: {output_dir}")
    
    compress_images(assets_dir, output_dir)
    print("Compression complete!")