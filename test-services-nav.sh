#!/bin/bash

# Test script to verify Services navigation consistency
echo "Testing Services navigation consistency across HTML files..."

# List of files to check
files=(
    "index.html"
    "about-us.html"
    "contact.html"
    "machine-vision.html"
    "robotics.html"
    "PLC.html"
    "product-details.html"
    "projects-details.html"
    "blog-with-sidebar.html"
    "power-supply.html"
    "team-carousel.html"
)

echo "Checking for consistent Services dropdown structure..."
echo "Expected: Machine Vision, Robotics, PLC & HMI"
echo "=========================================="

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Checking $file..."
        
        # Check if the file has the Services dropdown
        if grep -q "Services" "$file"; then
            # Check for the three expected links
            machine_vision=$(grep -c "machine-vision.html" "$file")
            robotics=$(grep -c "robotics.html" "$file")
            plc=$(grep -c "PLC.html" "$file")
            
            echo "  - Machine Vision: $machine_vision occurrences"
            echo "  - Robotics: $robotics occurrences"
            echo "  - PLC & HMI: $plc occurrences"
            
            if [ $machine_vision -gt 0 ] && [ $robotics -gt 0 ] && [ $plc -gt 0 ]; then
                echo "  ✓ PASS - All three services found"
            else
                echo "  ✗ FAIL - Missing service links"
            fi
        else
            echo "  - No Services dropdown found"
        fi
        echo ""
    else
        echo "  - File $file not found"
        echo ""
    fi
done

echo "Test completed!"
