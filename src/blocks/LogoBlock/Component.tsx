import { cn } from '@/utilities/ui'
import React from 'react'
import RichText from '@/components/RichText'

import type { LogoBlock as LogoBlockProps, Media as MediaType } from '@/payload-types'

import { Media } from '../../components/Media'
import { AnimatedGroup } from '@/components/motion/animated-group'

type ExtendedLogoBlockProps = LogoBlockProps & {
  logos?: MediaType[]
  className?: string
  disableInnerContainer?: boolean
  captionClassName?: string
  imgClassName?: string
  disableCaption?: boolean
  media?: any // Replace 'any' with the correct type if known
}

export const LogoBlock: React.FC<ExtendedLogoBlockProps> = (props) => {
  const {
    caption,
    logos,
    className,
    disableInnerContainer,
    captionClassName,
    disableCaption,
    imgClassName,
    media,
  } = props

  return (
    <div className="bg-background-inverted w-full">
      <div className={cn('flex flex-col', className)}>
        {caption && !disableCaption && (
          <div
            className={cn(
              'section pt-site w-full',
              {
                container: !disableInnerContainer,
              },
              captionClassName,
            )}
          >
            <RichText
              className="prose-headings:text-inverted-primary prose-p:text-inverted-secondary m-0"
              data={caption}
              enableGutter={false}
            />
          </div>
        )}
        {logos && (
          <AnimatedGroup
            className="section py-site md: grid w-full grid-cols-2 justify-between gap-10 sm:grid-cols-3 lg:flex lg:flex-row"
            preset="slide"
          >
            {logos.map((item, index) => (
              <Media
                key={index}
                imgClassName={cn('mx-auto h-10 w-auto', imgClassName)}
                resource={item}
              />
            ))}
          </AnimatedGroup>
        )}
      </div>
    </div>
  )
}
